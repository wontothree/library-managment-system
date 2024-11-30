from tkinter import *
from tkinter import ttk

from src.components.table import Table

# 회원 관리 페이지 클래스
class AccountManagementTable:
    def __init__(self, parent_frame):
        # 회원 정보 테이블 생성
        self.columns = ("id", "name", "phone", "address", "email")
        self.table = Table(parent_frame, self.columns)

        # 회원가입 폼 생성
        self.form_frame = Frame(parent_frame)
        self.form_frame.pack(fill=X, padx=20, pady=10)

        # 폼 필드 생성
        self.create_form_fields()

    def create_form_fields(self):
        """회원가입 폼 필드 생성"""
        # ID 입력
        label_id = Label(self.form_frame, text="ID:")
        label_id.grid(row=0, column=0, padx=5, pady=5)
        self.entry_id = Entry(self.form_frame)
        self.entry_id.grid(row=0, column=1, padx=5, pady=5)

        # Name 입력
        label_name = Label(self.form_frame, text="Name:")
        label_name.grid(row=0, column=2, padx=5, pady=5)
        self.entry_name = Entry(self.form_frame)
        self.entry_name.grid(row=0, column=3, padx=5, pady=5)

        # Phone 입력
        label_phone = Label(self.form_frame, text="Phone:")
        label_phone.grid(row=1, column=0, padx=5, pady=5)
        self.entry_phone = Entry(self.form_frame)
        self.entry_phone.grid(row=1, column=1, padx=5, pady=5)

        # Address 입력
        label_address = Label(self.form_frame, text="Address:")
        label_address.grid(row=1, column=2, padx=5, pady=5)
        self.entry_address = Entry(self.form_frame)
        self.entry_address.grid(row=1, column=3, padx=5, pady=5)

        # Email 입력
        label_email = Label(self.form_frame, text="Email:")
        label_email.grid(row=2, column=0, padx=5, pady=5)
        self.entry_email = Entry(self.form_frame)
        self.entry_email.grid(row=2, column=1, padx=5, pady=5)

        # 회원가입 버튼
        button_add = Button(self.form_frame, text="Sign Up", command=self.add_member)
        button_add.grid(row=3, column=0, columnspan=4, pady=10)

        # 회원탈퇴 버튼
        button_delete = Button(self.form_frame, text="Sign Out", command=self.delete_member)
        button_delete.grid(row=4, column=0, columnspan=4, pady=10)

    def add_member(self):
        """회원 추가"""
        # 입력된 값 가져오기
        member_id = self.entry_id.get()
        name = self.entry_name.get()
        phone = self.entry_phone.get()
        address = self.entry_address.get()
        email = self.entry_email.get()

        # 입력값이 비어있지 않으면 테이블에 추가
        if member_id and name and phone and address and email:
            self.table.insert_data((member_id, name, phone, address, email))

        # 입력 필드 초기화
        self.entry_id.delete(0, END)
        self.entry_name.delete(0, END)
        self.entry_phone.delete(0, END)
        self.entry_address.delete(0, END)
        self.entry_email.delete(0, END)

    def delete_member(self):
        """선택된 회원 삭제"""
        self.table.delete_selected()

# 메인 애플리케이션 클래스
class MemberManagement:
    def __init__(self, window):
        self.window = window
        self.window.geometry(f"{self.window.winfo_screenwidth()}x{self.window.winfo_screenheight()}")

        # 메인 레이아웃 설정 (그리드로 전체 레이아웃 설정)
        self.window.grid_rowconfigure(0, weight=1)
        self.window.grid_columnconfigure(1, weight=1)

        # 콘텐츠 영역을 grid 레이아웃에 배치
        self.content_frame = Frame(self.window)
        self.content_frame.grid(row=0, column=1, sticky="nsew")

        # 회원 관리 UI 생성
        self.create_account_management_ui()

    def create_account_management_ui(self):
        """회원 관리 UI 생성"""
        self.account_management = AccountManagementTable(self.content_frame)

# 프로그램 실행
if __name__ == "__main__":
    window = Tk()
    member_management = MemberManagement(window)
    window.mainloop()
