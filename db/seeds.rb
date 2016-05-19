Job.all.destroy_all
Search.all.destroy_all

# encoding: UTF-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Search.create(area_name: '東京')
Search.create(area_name:  '神奈川')
Search.create(area_name:  '千葉')
Search.create(area_name:  '埼玉')
Search.create(area_name:  '愛知')
Search.create(area_name:  '大阪')
Search.create(area_name:  '北海道')
Search.create(area_name:  '青森')
Search.create(area_name:  '岩手')
Search.create(area_name:  '宮城')
Search.create(area_name:  '秋田')
Search.create(area_name:  '山形')
Search.create(area_name:  '福島')
Search.create(area_name:  '茨城')
Search.create(area_name:  '栃木')
Search.create(area_name:  '群馬')
Search.create(area_name:  '新潟')
Search.create(area_name:  '富山')
Search.create(area_name:  '石川')
Search.create(area_name:  '福井')
Search.create(area_name:  '山梨')
Search.create(area_name:  '長野')
Search.create(area_name:  '岐阜')
Search.create(area_name:  '静岡')
Search.create(area_name:  '三重')
Search.create(area_name:  '滋賀')
Search.create(area_name:  '京都')
Search.create(area_name:  '兵庫')
Search.create(area_name:  '奈良')
Search.create(area_name: '和歌山')
Search.create(area_name:  '鳥取')
Search.create(area_name:  '島根')
Search.create(area_name:  '岡山')
Search.create(area_name:  '広島')
Search.create(area_name:  '山口')
Search.create(area_name:  '徳島')
Search.create(area_name:  '香川')
Search.create(area_name:  '愛媛')
Search.create(area_name:  '高知')
Search.create(area_name:  '福岡')
Search.create(area_name:  '佐賀')
Search.create(area_name:  '長崎')
Search.create(area_name:  '熊本')
Search.create(area_name:  '大分')
Search.create(area_name:  '宮崎')
Search.create(area_name:  '鹿児島')
Search.create(area_name:  '沖縄')

Job.create(title: '働くママさんも安心！', description: '周りには病院施設、調剤薬局などの施設が多数あり、女性のお客様の来店が非常に多いお店ですので女性の施術スタッフの方は働きやすい環境。
',area: '東京')
Job.create(title: '★新規Open★', description: '社内独立制度有り！ 将来独立開業したい方、FCにご興味のある方お待ちしております。
',area: '福島')
Job.create(title: '雰囲気', description: '都会の喧騒を忘れ、リラックスリゾートで、お客様にあなたのすばらしい癒しを提供しませんか。
',area: '東京')


puts "nice"
