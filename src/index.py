from tkinter import *

# 사이드바 클래스 정의
class Sidebar(Frame):
    def __init__(self, master, show_page_callback, *args, **kwargs):
        super().__init__(master, *args, **kwargs)
        
        # 사이드바의 기본 속성
        self.config(bg='#333', width=250)
        self.grid(row=0, column=0, sticky="ns")  # 그리드 레이아웃에서 왼쪽에 배치

        # 페이지 이동을 위한 버튼들
        self.show_page_callback = show_page_callback  # 페이지 전환 콜백 함수
        
        self.button_page1 = Button(self, text="Page 1 - Hello World", bg='#444', fg='white', relief=FLAT, width=20, height=2, command=lambda: self.show_page("page1"))
        self.button_page1.grid(row=0, pady=10)

        self.button_page2 = Button(self, text="Page 2 - Goodbye World", bg='#444', fg='white', relief=FLAT, width=20, height=2, command=lambda: self.show_page("page2"))
        self.button_page2.grid(row=1, pady=10)

    def show_page(self, page_name):
        # 페이지 전환을 위한 콜백 호출
        self.show_page_callback(page_name)

# 메인 애플리케이션 클래스
class App:
    def __init__(self, window):
        self.window = window
        self.window.geometry(f"{self.window.winfo_screenwidth()}x{self.window.winfo_screenheight()}")

        # 메인 레이아웃 설정 (그리드로 전체 레이아웃 설정)
        self.window.grid_rowconfigure(0, weight=1)
        self.window.grid_columnconfigure(1, weight=1)

        # 사이드바와 콘텐츠 영역을 grid 레이아웃에 배치
        self.sidebar = Sidebar(self.window, self.show_page)
        self.content_frame = Frame(self.window)
        self.content_frame.grid(row=0, column=1, sticky="nsew")

        # 각 페이지 정의
        self.page1_frame = Frame(self.content_frame)
        self.page2_frame = Frame(self.content_frame)
        
        # 페이지1: Hello World
        self.label_page1 = Label(self.page1_frame, text="Hello, World!", font=("Arial", 24))
        self.label_page1.pack(expand=True)

        # 페이지2: Goodbye World
        self.label_page2 = Label(self.page2_frame, text="Goodbye, World!", font=("Arial", 24))
        self.label_page2.pack(expand=True)

        # 첫 번째 페이지 표시
        self.show_page('page1')

    def show_page(self, page_name):
        # 모든 페이지 숨기기
        self.page1_frame.pack_forget()
        self.page2_frame.pack_forget()

        # 해당 페이지 표시
        if page_name == 'page1':
            self.page1_frame.pack(fill=BOTH, expand=True)
        elif page_name == 'page2':
            self.page2_frame.pack(fill=BOTH, expand=True)


# 프로그램 실행
if __name__ == "__main__":
    window = Tk()
    app = App(window)
    window.mainloop()
