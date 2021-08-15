# typed: false
# enterprise_accountの作成
enterprise_account = EnterpriseAccount.create(
  name: 'テスト用株式会社',
  hiragana: 'てすとかぶしきがいしゃ'
)

# userの作成
normal_user = User.create(
  name: 'テスト一般ユーザー',
  hiragana: 'てすといっぱんゆーざー',
  email: 'develop_normal@gmail.com',
  password: 'aaaaaa'
)
ea_user = User.create(
  name: 'テスト企業ユーザー',
  hiragana: 'てすときぎょうゆーざー',
  email: 'develop_enterprise@gmail.com',
  password: 'aaaaaa',
  enterprise_account_id: enterprise_account.id
)
admin_user = User.create(
  name: 'テストアドミンユーザー',
  hiragana: 'てすとあどみんゆーざー',
  email: 'develop_admin@gmail.com',
  password: 'aaaaaa',
  admin: true
)

# offerの作成
10.times do |i|
  Offer.create(
    name: "テスト求人#{i}",
    fee: 100000 * i,
    description: 'これはテスト用求人です。アットホームな職場です',
    fee_type: 0,
    deadline: Time.zone.now.next_month,
    enterprise_account_id: enterprise_account.id
  )
end

# offer_applicationの作成
offer = Offer.first
offer_application = OfferApplication.create(
  offer_id: offer.id,
  user_id: normal_user.id
)
