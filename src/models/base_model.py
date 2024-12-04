import sqlite3

class BaseModel:
    DATABASE = "library.db"

    @classmethod
    def connect(cls):
        """
        데이터베이스 연결을 반환하는 메서드
        """
        return sqlite3.connect(cls.DATABASE)

    @classmethod
    def create(cls, **kwargs):
        """
        입력된 데이터를 테이블에 삽입하는 공통 메서드
        """
        connection = cls.connect()
        cursor = connection.cursor()
        table = cls.__name__.lower()  # 클래스 이름을 테이블 이름으로 변환
        columns = ", ".join(kwargs.keys())
        values = ", ".join("?" for _ in kwargs)
        cursor.execute(f"INSERT INTO {table} ({columns}) VALUES ({values})", tuple(kwargs.values()))
        connection.commit()
        connection.close()
