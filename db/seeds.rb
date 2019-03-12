User.create!([
  {username: "nguyenchuc", avatar: nil, password_digest: nil, role_id: 1, email: "nguyenminhchucit@gmail.com", encrypted_password: "$2a$11$00Tylu7zRIxADkeTS.Q6Fuzh.VhU9J5iGBQf4iiS8sEbnsbzcLuFq", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil},
  {username: "nguyenminhchuc", avatar: nil, password_digest: nil, role_id: 1, email: "nguyenchuc03031996@gmail.com", encrypted_password: "$2a$11$2C3ddr1XInyPFbweesrNUeg6EYQU0iuOZaEUrm3OOQ.fr9elq9hEm", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil},
  {username: "Admin", avatar: nil, password_digest: nil, role_id: 4, email: "admin@gmail.com", encrypted_password: "$2a$11$1.XwDS4vxfHZdFkNuZwbf.Ef9jzo795mRA0OqsN5bR2tjmmQx6fWa", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil}
])
Book.create!([
  {name: "nguyenchuc", telephone: 327464985, address: "ninh binh", status: 1, number_user: "2", user_id: 1, tour_id: 2},
  {name: "nguyenchuc", telephone: 327464985, address: "ninh binh", status: 1, number_user: "2", user_id: 1, tour_id: 1},
  {name: "nguyenchuc", telephone: 327464985, address: "ninh binh", status: 1, number_user: "2", user_id: 1, tour_id: 1},
  {name: "nguyenchuc", telephone: 327464985, address: "ninh binh", status: 1, number_user: "2", user_id: 1, tour_id: 1},
  {name: "nguyenchuc", telephone: 327464985, address: "ninh binh", status: 1, number_user: "2", user_id: 1, tour_id: 1},
  {name: "nguyenchuc", telephone: 327464985, address: "ninh binh", status: 1, number_user: "2", user_id: 1, tour_id: 1},
  {name: "nguyenchuc", telephone: 327464985, address: "ninh binh", status: 1, number_user: "2", user_id: 1, tour_id: 1},
  {name: "nguyenchuc", telephone: 327464985, address: "ninh binh", status: 1, number_user: "2", user_id: 1, tour_id: 1},
  {name: "nguyenchuc", telephone: 327464985, address: "ninh binh", status: 1, number_user: "2", user_id: 1, tour_id: 1},
  {name: "nguyenchuc", telephone: 327464985, address: "ninh binh", status: 1, number_user: "2", user_id: 1, tour_id: 1},
  {name: "nguyenchuc", telephone: 327464985, address: "ninh binh", status: 1, number_user: "2", user_id: 1, tour_id: 1},
  {name: "nguyenchuc", telephone: 327464985, address: "ninh binh", status: 1, number_user: "2", user_id: 1, tour_id: 1},
  {name: "nguyenchuc", telephone: 327464985, address: "ninh binh", status: 1, number_user: "2", user_id: 1, tour_id: 1}
])
Category.create!([
  {category: "du lịch miền trung "},
  {category: "Du lịch tham quan"},
  {category: "Du lịch nghỉ dưỡng"}
])
Discount.create!([
  {discount: 5},
  {discount: 10},
  {discount: 20}
])
Role.create!([
  {role_name: "registered"},
  {role_name: "banned"},
  {role_name: "moderator"},
  {role_name: "admin"}
])
Tour.create!([
  {tour_name: "BÁI ĐÍNH - TRÀNG AN", description: " để lấy lại mảnh ghép hình đang dính dưới đế giày của Nam Phong. Quan sát được chuyện đó Minh Huy ra tay giúp đỡ cô, rồi có được trong tay mảnh ghép nên từ đó lại 'hành hạ' An Chi theo ý mình. Hạ Linh lại va phải Nam Phong ở phòng tập gym, nhưng thay vì trốn chạy như trước đây thì bây giờ cô lại muốn dành thêm nhiều thời gian bên cạnh Nam Phong. Trong lúc đi ăn cùng nhau, Minh Huy thừa nhận đã biết bí mật của An Chi và Nam Phong, dồn nén trong lòng bấy lâu, An Chi cũng cần 1 người bạn để tâm sự giải bày nên kể toàn bộ cho Minh Huy nghe. Cả 2 còn nhận nhau làm anh trai - em gái kết nghĩa. Hai cặp đôi này rồi sẽ có kết thúc như thế nào đây?", image: "tour-du-lich-co-do-hue-1-ngay-6.jpg", city: "Ninh Bình", country: "Việt Nam", price: 20000000, number_day: 2, discount_id: 1, category_id: 3},
  {tour_name: "Công viên Hạ Long", description: "Công viên Hạ Long – hay còn gọi là Sun World Park hiện là điểm vui chơi lớn nhất ở miền Bắc. Khu giải trí sở hữu 2 công viên mạo hiểm và công viên nước lớn nhất Đông Nam Á, cùng tuyến cáp treo Nữ hoàng cao nhất Thế giới và Vòng quay mặt trời Quảng Ninh khổng lồ.", image: "gia-ve-vong-quay-mat-troi-quang-ninh.jpg", city: "Quảng Ninh", country: "Việt Nam", price: 20000000, number_day: 3, discount_id: 1, category_id: 2},
  {tour_name: "Cố đô Huế", description: "Tour du lịch Đà Nẵng – Hội An – Cố đô Huế 4 ngày 3 đêm, một hành trình ý nghĩa đưa du khách đến với thiên đường du lịch miền Trung. Du khách không chỉ được chiêm ngưỡng cảnh đẹp quyến rũ của bãi biển ở Đà Nẵng, “tiên cảnh” Bà Nà mà còn có cơ hội khám phá cảnh đẹp hoài cổ ở Hội An, khám phá cố đô Huế với những công trình gắn liền với lịch sử đất nước.", image: "tour-dulich-danang-hoian-codohue-4n3d-kham-pha-thien-duong-dulich-mien-trung-26112018-1.jpg", city: "Huế", country: "Việt Nam", price: 345000, number_day: 2, discount_id: 2, category_id: 1},
  {tour_name: "Tour Hồ Chí Minh", description: "Hành trình du lịch Sài Gòn 1 ngày đưa du khách đến với thành phố mang tên Bác, từ lâu đã là trung tâm văn hóa, kinh tế của Việt Nam, thành phố này còn có có tên gọi khác là Hòn Ngọc Viễn Đông. Đến thành phố Hồ Chí Minh, thành phố có hơn 300 tuổi đời, bạn sẽ thấy những tòa nhà cao tầng, khu vui chơi giải trí, trung tâm mua sắm. Bên cạnh đó những phồn hoa chốn đô thị thì bạn cũng có thể thấy những biệt thự cổ kính, chợ truyền thống lâu đời…", image: "dulich-saigon-1ngay-26022019-1.jpg", city: "Hồ Chí Minh", country: "Việt Nam", price: 10000, number_day: 3, discount_id: 1, category_id: 2}
])
