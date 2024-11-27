from tkinter import *
from tkinter import ttk

def create_pretty_button(parent, text, command, width=20, height=2, font=('Arial', 12, 'bold'), bg='#ff7f50', fg='white'):
    """
    예쁜 버튼을 생성하는 함수

    :param parent: 버튼을 배치할 부모 위젯
    :param text: 버튼에 표시될 텍스트
    :param command: 버튼이 클릭될 때 실행할 함수
    :param width: 버튼의 가로 크기
    :param height: 버튼의 세로 크기
    :param font: 버튼 텍스트의 폰트
    :param bg: 버튼의 배경 색상
    :param fg: 버튼의 텍스트 색상
    :return: 생성된 버튼
    """
    button = Button(parent, text=text, command=command, width=width, height=height, font=font, bg=bg, fg=fg,
                    relief=SOLID, bd=2, activebackground='#ff4500', activeforeground='white')

    # 마우스 오버 효과
    button.bind("<Enter>", lambda e: button.config(bg='#ff4500'))
    button.bind("<Leave>", lambda e: button.config(bg=bg))

    # 버튼 배치
    button.pack(pady=10)

    return button

# 예시: 버튼을 사용해보기
def example_action():
    print("버튼 클릭됨!")

# Tkinter 윈도우 생성
root = Tk()
root.title("예쁜 버튼 예시")

# 버튼 생성
create_pretty_button(root, "클릭해 주세요", example_action)

root.mainloop()
