

import Foundation

struct Bill: Codable {
    let id = UUID()
    var amount: Double?
    var dueDate: Date?
    var notificationID: String?
    var paidDate: Date?
    var payee: String?
    var remindDate: Date?
}

extension Bill: Hashable {

}
