from tkinter import *
from src.components.table import Table  # Table 클래스를 import 한다고 가정합니다.

# 도서 관리 테이블 클래스
class BookTable:
    def __init__(self, parent_frame):
        columns = ("book_id", "book_name", "author", "publisher", "publication_year", "is_domestic")
        self.table = Table(parent_frame, columns)

        # 샘플 데이터 삽입
        self.table.insert_data(("1", "Python Programming", "John Doe", "XYZ Publishing", "2020", "Yes"))
        self.table.insert_data(("2", "Data Science Handbook", "Jane Smith", "ABC Books", "2021", "No"))
        self.table.insert_data(("3", "Machine Learning", "Alice Brown", "Tech Press", "2022", "Yes"))

    def add_book(self, book_id, book_name, author, publisher, publication_year, is_domestic):
        """새로운 도서 추가"""
        self.table.insert_data((book_id, book_name, author, publisher, publication_year, is_domestic))

    def delete_book(self):
        """선택된 도서 삭제"""
        self.table.delete_selected()

# 메인 애플리케이션 클래스
class BookManagementLog:
    def __init__(self, window):
        self.window = window
        self.window.geometry(f"{self.window.winfo_screenwidth()}x{self.window.winfo_screenheight()}")

        # 메인 레이아웃 설정 (그리드로 전체 레이아웃 설정)
        self.window.grid_rowconfigure(0, weight=1)
        self.window.grid_columnconfigure(1, weight=1)

        # 콘텐츠 영역을 grid 레이아웃에 배치
        self.content_frame = Frame(self.window)
        self.content_frame.grid(row=0, column=1, sticky="nsew")

        # 도서 관리용 UI 생성
        self.create_book_management_ui()

    def create_book_management_ui(self):
        """도서 관리 UI 생성"""
        # BookTable 클래스 인스턴스화
        self.book_table = BookTable(self.content_frame)

        # 도서 등록 폼
        self.form_frame = Frame(self.content_frame)
        self.form_frame.pack(fill=X, padx=20, pady=10)

        # 폼 필드 생성
        self.create_form_fields()

        # 도서 삭제 버튼
        button_delete = Button(self.form_frame, text="Delete Book", command=self.delete_book)
        button_delete.grid(row=4, column=0, columnspan=4, pady=10)

    def create_form_fields(self):
        """도서 등록 폼 필드 생성"""
        # Book ID 입력
        label_id = Label(self.form_frame, text="Book ID:")
        label_id.grid(row=0, column=0, padx=5, pady=5)
        self.entry_id = Entry(self.form_frame)
        self.entry_id.grid(row=0, column=1, padx=5, pady=5)

        # Book Name 입력
        label_name = Label(self.form_frame, text="Book Name:")
        label_name.grid(row=0, column=2, padx=5, pady=5)
        self.entry_name = Entry(self.form_frame)
        self.entry_name.grid(row=0, column=3, padx=5, pady=5)

        # Author 입력
        label_author = Label(self.form_frame, text="Author:")
        label_author.grid(row=1, column=0, padx=5, pady=5)
        self.entry_author = Entry(self.form_frame)
        self.entry_author.grid(row=1, column=1, padx=5, pady=5)

        # Publisher 입력
        label_publisher = Label(self.form_frame, text="Publisher:")
        label_publisher.grid(row=1, column=2, padx=5, pady=5)
        self.entry_publisher = Entry(self.form_frame)
        self.entry_publisher.grid(row=1, column=3, padx=5, pady=5)

        # Publication Year 입력
        label_year = Label(self.form_frame, text="Publication Year:")
        label_year.grid(row=2, column=0, padx=5, pady=5)
        self.entry_year = Entry(self.form_frame)
        self.entry_year.grid(row=2, column=1, padx=5, pady=5)

        # Domestic Status 입력
        label_domestic = Label(self.form_frame, text="Is Domestic?")
        label_domestic.grid(row=2, column=2, padx=5, pady=5)
        self.entry_domestic = Entry(self.form_frame)
        self.entry_domestic.grid(row=2, column=3, padx=5, pady=5)

        # 도서 추가 버튼
        button_add = Button(self.form_frame, text="Add Book", command=self.add_book)
        button_add.grid(row=3, column=0, columnspan=4, pady=10)

    def add_book(self):
        """도서 추가"""
        book_id = self.entry_id.get()
        book_name = self.entry_name.get()
        author = self.entry_author.get()
        publisher = self.entry_publisher.get()
        publication_year = self.entry_year.get()
        is_domestic = self.entry_domestic.get()

        # BookTable 클래스의 add_book 메서드를 사용하여 도서 추가
        self.book_table.add_book(book_id, book_name, author, publisher, publication_year, is_domestic)

        # 입력 필드 초기화
        self.entry_id.delete(0, END)
        self.entry_name.delete(0, END)
        self.entry_author.delete(0, END)
        self.entry_publisher.delete(0, END)
        self.entry_year.delete(0, END)
        self.entry_domestic.delete(0, END)

    def delete_book(self):
        """선택된 도서 삭제"""
        self.book_table.delete_book()

# 프로그램 실행
if __name__ == "__main__":
    window = Tk()
    book_management_log = BookManagementLog(window)
    window.mainloop()
