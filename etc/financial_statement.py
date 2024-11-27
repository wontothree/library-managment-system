import pandas as pd
import matplotlib.pyplot as plt

account = pd.read_excel('November.xlsx', engine="openpyxl")

#분개장의 차변과 대변 일치 여부
left_sum = 0
right_sum = 0

for value in account["차변금액"]:
    left_sum += value

for value in account["대변금액"]:
    right_sum += value

if left_sum != right_sum:
    print("분개장의 차변과 대변이 일치하지 않습니다.")
else:
    # 총계정원장
    list = list(account["차변"]) + list(account["대변"])
    general_ledger_name = []
    general_ledger = {}

    for value in list:
        if value not in general_ledger_name:
            general_ledger_name.append(value)

    for value in general_ledger_name:
        left = 0
        right = 0

        for i in range(len(account["차변"])):
            if value == account["차변"][i]:
                left += account["차변금액"][i]

        for i in range(len(account["대변"])):
            if value == account["대변"][i]:
                right += account["대변금액"][i]

        general_ledger[value] = left - right

    # print(general_ledger)

    # 시산표의 차변과 대변 일치 여부
    x = 0
    for value in general_ledger_name:
        x += general_ledger[value]

    if x:
        print("시산표의 차변과 대변이 일치하지 않습니다.")
    else:
        # 갚아야 할 돈이나 받아야 할 돈 있는지 여부
        if general_ledger["채무"] == 0:
            print("갚아야 할 돈: 0")
        else:
            print("갚아야 할 돈",general_ledger["채무"])

        if general_ledger["채권"] == 0:
            print("받아야 할 돈: 0")
        else:
            print("받아야 할 돈:", general_ledger["채권"])

        # 손익계산서
        total_profit = abs(general_ledger["수익"] + general_ledger["용돈"])
        total_expense = general_ledger["음식"] + general_ledger["교통"] + general_ledger["통신"] + general_ledger["학습"] + \
                        general_ledger["패션"] + general_ledger["여가"] + general_ledger["미용"] + general_ledger["선물"] + \
                        general_ledger["저축"]
        balance = abs(total_profit) - abs(total_expense)

        print("개인 총수익:", abs(general_ledger["수익"]))
        print("개인 총지출:", total_expense - abs(general_ledger["용돈"]))
        print("현금 잔액:", balance)



        #시각화
        private_total_expense = []
        private_total_expense.append(general_ledger["음식"])
        private_total_expense.append(general_ledger["교통"])
        private_total_expense.append(general_ledger["통신"])
        private_total_expense.append(general_ledger["학습"])
        private_total_expense.append(general_ledger["여가"] - abs(general_ledger["용돈"]))
        private_total_expense.append(general_ledger["미용"])
        private_total_expense.append(general_ledger["선물"])
        private_total_expense.append(general_ledger["저축"])

        x_data = ['food', 'transf', 'commu', 'study', 'leisure', 'beauty', 'gift', 'save']

        plt.title('Private Total Expense', fontsize=16)
        plt.xlabel('Entry', fontsize=12)
        plt.ylabel('Amount of Money', fontsize=12)

        plt.scatter(x_data, private_total_expense)
        plt.plot(x_data, private_total_expense)
        plt.show()