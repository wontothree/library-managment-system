from base_model import BaseModel

class Member(BaseModel):
    def __init__(self, full_name, phone_number, street_address, email_address, withdrawn_at=None, is_vip_member=False, account_created_at=None):
        """
        Member 클래스의 인스턴스를 초기화하는 생성자
        """
        self.full_name = full_name
        self.phone_number = phone_number
        self.street_address = street_address
        self.email_address = email_address
        self.withdrawn_at = withdrawn_at
        self.is_vip_member = is_vip_member
        self.account_created_at = account_created_at or "CURRENT_DATE"  # 기본값으로 현재 날짜

    def save(self):
        """
        Member 인스턴스를 데이터베이스에 저장하는 메서드
        """
        Member.create(
            full_name=self.full_name,
            phone_number=self.phone_number,
            street_address=self.street_address,
            email_address=self.email_address,
            withdrawn_at=self.withdrawn_at,
            is_vip_member=self.is_vip_member,
            account_created_at=self.account_created_at
        )


# 새로운 회원을 데이터베이스에 추가하는 예시

# Member 인스턴스 생성
new_member = Member(
    full_name="John Doe",
    phone_number="123-456-7890",
    street_address="123 Elm Street",
    email_address="john.doe@example.com",
    is_vip_member=True
)

# save() 메서드를 통해 데이터베이스에 저장
new_member.save()
