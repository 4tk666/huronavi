tohoku = Prefecture.create(name: "北海道・東北地方")
tohoku.children.create([{name:"北海道"},{name:"青森県"},{name:"岩手県"},{name:"秋田県"},{name:"宮城県"},{name:"山形県"},{name:"福島県"}])
kanto = Prefecture.create(name: "関東地方")
kanto.children.create([{name:"茨城県"},{name:"栃木県"},{name:"群馬県"},{name:"埼玉県"},{name:"千葉県"},{name:"東京都"},{name:"神奈川県"}])
hokuriku = Prefecture.create(name: "北陸地方")
hokuriku.children.create([{name:"新潟県"},{name:"長野県"},{name:"山梨県"},{name:"富山県"},{name:"石川県"},{name:"福井県"}])
tokai = Prefecture.create(name: "東海地方")
tokai.children.create([{name:"静岡県"},{name:"愛知県"},{name:"岐阜県"},{name:"三重県"}])
kinki =  Prefecture.create(name: "近畿地方")
kinki.children.create([{name:"大阪府"},{name:"京都府"},{name:"滋賀県"},{name:"兵庫県"},{name:"奈良県"},{name:"和歌山県"}])
chugoku = Prefecture.create(name: "中国地方")
chugoku.children.create([{name:"鳥取県"},{name:"島根県"},{name:"岡山県"},{name:"広島県"},{name:"山口県"}])
sikoku = Prefecture.create(name: "四国地方")
sikoku.children.create([{name:"香川県"},{name:"徳島県"},{name:"愛媛県"},{name:"高知県"}])
kyusyu =  Prefecture.create(name: "九州地方・沖縄")
kyusyu.children.create([{name:"福岡県"},{name:"佐賀県"},{name:"長崎県"},{name:"大分県"},{name:"熊本県"},{name:"宮崎県"},{name:"鹿児島県"},{name:"沖縄県"}])
