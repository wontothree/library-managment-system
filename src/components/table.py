from tkinter import *
from tkinter import ttk

class Table:
    def __init__(self, parent_frame, columns, height=15):
        self.frame = Frame(parent_frame)
        self.frame.pack(expand=True, fill=BOTH, padx=20, pady=20)

        # 스타일 설정
        style = ttk.Style()
        style.configure("Treeview",
                        borderwidth=1,
                        relief="solid"
        )

        style.configure("Treeview.Heading",
                        font=("Arial", 10, "bold"),
                        foreground="white"
        )

        style.configure("Treeview.Row",
                        padding=(5, 5)
        )

        style.configure("Treeview",
                        highlightthickness=0,
                        bd=0,
                        font=('Arial', 10)
        )

        # Treeview 위젯 (재사용 가능한 테이블)
        self.tree = ttk.Treeview(self.frame, columns=columns, show="headings", height=height)

        # 컬럼 헤딩 정의
        for col in columns:
            self.tree.heading(col, text=col.replace("_", " ").title())

        # 컬럼 너비 설정 (기본 설정)
        for col in columns:
            self.tree.column(col, width=150)

        # Treeview를 프레임에 배치
        self.tree.pack(expand=True, fill=BOTH)

    def insert_data(self, values):
        """데이터 삽입"""
        self.tree.insert("", "end", values=values)

    def delete_selected(self):
        """선택된 항목 삭제"""
        selected_item = self.tree.selection()
        if selected_item:
            self.tree.delete(selected_item)

    def get_all_data(self):
        """현재 테이블의 모든 데이터를 반환"""
        return [self.tree.item(item)["values"] for item in self.tree.get_children()]


if __name__ == "__main__":
    # Tkinter 윈도우 설정
    window = Tk()
    window.title("Data Table Example")

    # 부모 프레임 생성
    parent_frame = Frame(window)
    parent_frame.pack(fill=BOTH, expand=True)

    # 테이블에 사용할 컬럼 이름
    columns = ("book_id", "book_name", "author", "publisher", "publication_year", "is_domestic")

    # Table 인스턴스 생성
    table = Table(parent_frame, columns, height=10)

    # 데이터 삽입 버튼 동작
    def insert_sample_data():
        table.insert_data(("1", "Python Programming", "John Doe", "XYZ Publishing", "2020", "Yes"))
        table.insert_data(("2", "Data Science Handbook", "Jane Smith", "ABC Books", "2021", "No"))
        table.insert_data(("3", "Machine Learning", "Alice Brown", "Tech Press", "2022", "Yes"))

    # 선택된 항목 삭제 버튼 동작
    def delete_selected_data():
        table.delete_selected()

    # 전체 데이터 출력 버튼 동작
    def print_all_data():
        data = table.get_all_data()
        print("Current Table Data:")
        for row in data:
            print(row)

    # UI 버튼 설정
    button_insert = Button(window, text="Insert Sample Data", command=insert_sample_data)
    button_insert.pack(pady=5)

    button_delete = Button(window, text="Delete Selected", command=delete_selected_data)
    button_delete.pack(pady=5)

    button_print = Button(window, text="Print All Data", command=print_all_data)
    button_print.pack(pady=5)

    # 윈도우 크기 설정
    window.geometry("600x400")

    # 실행
    window.mainloop()
