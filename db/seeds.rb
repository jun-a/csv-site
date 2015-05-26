
#coding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




#Todoタスク
#Active_reportを作成

#supporter_voiceを作成

#from_client_messageを作成


#imageテーブルは個別で作っていった方がいい疑惑？



#Imageの作成
   20.times do |number|
    Image.create(image:"#{number}.jpg")
  end  



#Categoryの作成
  Category.create(name: "報告")
  Category.create(name: "news")
  Category.create(name: "その他")

#Tagの作成
  Tag.create(name:"寄付金1億以上")
  Tag.create(name:"途上国")
  Tag.create(name:"カット関係") 


#Donation_purposeの作成
  DonationPurpose.create(donation_purpose: "人材の普及")
  DonationPurpose.create(donation_purpose: "資源の供給")
  DonationPurpose.create(donation_purpose: "途上国の発展")

#donation_pay_methodの作成
  DonationPayMethod.create(donation_pay_method:"口座振り込み")
  DonationPayMethod.create(donation_pay_method:"口座振替")
  DonationPayMethod.create(donation_pay_method:"請求書発行")   


#Sexの作成
  Sex.create(sex:"男")
  Sex.create(sex:"女")
  Sex.create(sex:"その他")

#Contract_statusの作成
  ContractStatus.create(contract_status:"法人(新規)")
  ContractStatus.create(contract_status:"法人(既存の取引あり)")
  ContractStatus.create(contract_status:"その他")

ReceiptOfMoneyStatus.create(receipt_of_money_status:"入金済み")
ReceiptOfMoneyStatus.create(receipt_of_money_status:"未入金")





#supporter_voicesの作成
  50.times do |number|
    SupporterVoice.create(title:"サンプル#{number}",
                         content:"いい寄付になりました！#{number}",
                         client_id: number  % 4 + 1,
                         employee_id: number % 5 + 1,
                         publish_start_date:"2015-05-#{number % 3 + 1}",
                         publish_end_date:"2015-05-#{number % 3 + 1}"
                         )
  end


#Client_userを10個追加
  10.times do |number|
    ClientUser.create(
                       name:"client_user#{number}",
                       email:"client_user#{number}@sample.com", 
                       password:"sample#{number}"
                       )
  end
 

#Clientを50個作成
  15.times do |number|
    Client.create(
                  name:"client#{number}",
                  address:"東京都港区1-#{number}-#{number + 2}",
                  tel_number:"03-2324-321#{number}", 
                  client_email:"client#{number}@sample#{number}.com", 
                  client_president:"鈴木#{number}郎",
                  client_manager:"佐藤#{15 - number}郎",
                  price_per_employee: "#{(number + 1) * 1000}円",    #client編集部分で用いるのでここで定義
                  donation_purpose_id: number % 3 + 1,
                  image_id: number + 1,
                  contract_status_id: number % 3 + 1,
                  donation_pay_method_id: number % 3 + 1
                  ) 
  end



#employeeの作成
  50.times do |number|
    Employee.create(
                      name:"admin_user#{number}",
                      birth_day:"1989-12-#{number % 7 + 1}",
                      employee_email:"employee#{number}@sample.com",
                      donation_price: (number % 3 + 1) * 1000, 
                      date_of_hire:"2014-04-#{number % 3}",
                      client_position:"its #{number}",
                      client_id: number % 3 + 1,
                      supporter_voice_id: number + 1,
                      sex_id: number % 3 + 1
                      )
  end  

#Active_reportsの作成
  
  10.times do |number|
    ActiveReport.create(title:"サンプル#{number}",
                         content:"#{'いい寄付になりました' * number}",
                         client_id: number % 3 + 1,
                         client_user_id: number % 3 + 1,
                         category_id: number % 3 + 1,
                         publish_start_date:"2015-05-#{number + 1}",
                         publish_end_date:"2015-05-#{number + 1}"
                         )
  end

#nnテーブル部分の情報入れこみ
#active_report and tag
10.times do |number|
  ActiveReportsTag.create(
                                  tag_id: 1,
                                  active_report_id: number + 1
                                  )
end

10.times do |number|
  ActiveReportsTag.create(
                                  tag_id: 3,
                                  active_report_id: number + 1
                                  )
end

#image and active_report
10.times do |number|
  ImagesActiveReport.create(
                                  image_id: 1,
                                  active_report_id: number + 1
                                  )
end

10.times do |number|
  ImagesActiveReport.create(
                                  image_id: 3,
                                  active_report_id: number + 1
                                  )
end



#image and supportervoice
10.times do |number|
  ImagesSupporterVoice.create(
                                  image_id: 1,
                                  supporter_voice_id: number + 1
                                  )
end

10.times do |number|
  ImagesSupporterVoice.create(
                                  image_id: 3,
                                  supporter_voice_id: number + 1
                                  )
end

#active_reportごとのcomment部分

5.times do |number|
  ActiveReportsComment.create(  
                            active_report_id: 1,
                            client_user_id: number + 1,
                            comment: "こんにちは。#{number + 1}"

                            )
end

5.times do |number|
  ActiveReportsComment.create(  
                            active_report_id: 2,
                            client_user_id: number + 1,
                            comment: "こんにちは。#{number + 1}"

                            )
end


#donation_temporaliyのデータ保存
15.times do |number|
  DonationsEmployee.create(
                                  donation_id: 2,
                                  employee_id: number + 1,
                                  donation_price: 1000 * number,  
                                ) 
end

#Donationの作成
  10.times do |number|
    Donation.create( 
                    donation_action_month:"2015-#{number}-#{number % 3}",
                    donation_message:"good luck! for #{number}",
                    receipt_of_money_status_id: number % 2 + 1,
                    client_id: number % 4 + 1
                    )
  end


Donation.create( 
                    donation_action_month:"2015-11-02",
                    donation_message:"good luck! for 1",
                    receipt_of_money_status_id: 1,
                    client_id: 2,
                    client_user_id: 3
                    )

Donation.create( 
                    donation_action_month:"2015-11-23",
                    donation_message:"good luck! for 2",
                    receipt_of_money_status_id: 1,
                    client_id: 2,
                    client_user_id: 3
                    )

Donation.create( 
                    donation_action_month:"2015-12-02",
                    donation_message:"good luck! for 1",
                    receipt_of_money_status_id: 2,
                    client_id: 4,
                    client_user_id: 3
                    )

Donation.create( 
                    donation_action_month:"2015-12-31",
                    donation_message:"good luck! for samaple",
                    receipt_of_money_status_id: 1,
                    client_id: 4,
                    client_user_id: 3
                    )

Donation.create( 
                    donation_action_month:"2015-11-02",
                    donation_message:"good luck! for nice",
                    receipt_of_money_status_id: 2,
                    client_id: 5,
                    client_user_id: 3
                    )

Donation.create( 
                    donation_action_month:"2015-11-02",
                    donation_message:"good luck! for 1",
                    receipt_of_money_status_id: 2,
                    client_id: 3,
                    client_user_id: 3
                    )





=begin
  5.times do |number|
    TagActiveReport.create(
                            tag_id: 1,3
                            active_report_id: number
                            )
  end




#DonationEmployeeの作成
  5.times do |number|
    DonationEmployee.create(
                            employee_id: 1,9,18,19,20,21,32,40,41,42, 
                            donation_id: number
                            )
  end

  5.times do |number|
    DonationEmployee.create(
                            tag_id: 2,3,6,12,13,33,37,45,47
                            active_report_id: number
                            )
  end





=begin
#Admin_userを10個追加
  10.times do |number|
    AdminUser.create(name:"admin_user#{number}",
                      email:"admin_user#{number}@sample.com", 
                      password:"sample#{number}")
  end
=end

#実行タスク

#emailに書き直し,contact_statusは別テーブルへ
#固定されるデータについては、別
#class Client < ActiveRecord::Base の書き換え
#price_per_employee カラムについては、clientテーブルにひも付けが適切
#join_tableの名称変更→active_report and image
#donation_purposeについて、clientに関連付け
#donation_pay_methodをclientテーブルにひもづけ
