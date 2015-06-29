import UIKit

public protocol Cell: class {
    static func description() -> String
    func configure(row row: Row)
}


extension Cell where Self: UITableViewCell {
    public func configure(row row: Row) {
        textLabel?.text = row.text
        detailTextLabel?.text = row.detailText
        accessoryType = row.accessory
    }
}
