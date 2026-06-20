import SwiftUI

struct SocialMediaInfo {
    let tag: String
    let color: Color
}

enum ServiceValue {
    case text(String)
    case available(Bool)
}

struct RestaurantInfoView: View {
    let socialMedia: [(platform: String, info: SocialMediaInfo)] = [
        ("Instagram", SocialMediaInfo(tag: "@Lemon", color: .pink)),
        ("Facebook",  SocialMediaInfo(tag: "facebook.com/lemon", color: .blue)),
        ("Tiktok",    SocialMediaInfo(tag: "@Lemon", color: .purple))
    ]

    let services: [(key: String, value: ServiceValue)] = [
        ("WiFi Password", .text("In Receipt")),
        ("Reservations",  .available(true)),
        ("Catering",      .available(true)),
        ("Takeout",       .available(true)),
        ("Delivering",    .available(false)),
        ("Parking",       .available(false))
    ]

    var body: some View {
        NavigationStack {
            List {
                Section("Social Media") {
                    ForEach(socialMedia, id: \.platform) { item in
                        HStack {
                            Text(item.platform)
                            Spacer()
                            Text(item.info.tag)
                                .foregroundColor(item.info.color)
                        }
                    }
                }
                Section("Services") {
                    ForEach(services, id: \.key) { item in
                        HStack {
                            Text(item.key)
                            Spacer()
                            switch item.value {
                            case .text(let str):
                                Text(str)
                                    .foregroundColor(.gray)
                            case .available(let isAvailable):
                                Text(isAvailable ? "Available" : "Unavailable")
                                    .foregroundColor(isAvailable ? .green : .red)
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    RestaurantInfoView()
}
