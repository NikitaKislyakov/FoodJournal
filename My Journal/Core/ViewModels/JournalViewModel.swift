import SwiftUI

final class JournalViewModel: ObservableObject {
    @Published var arrayOfFood: [Food] = [
        Food(image: UIImage(named: "Image")!, title: "Карамелле с крабом и креветками", description: "Вкуснейшая паста в ресторане Uva. Кушал во время поездки в Питер с Лерочкой", date: .now),
        Food(image: UIImage(named: "Image")!, title: "Карамелле с крабом и креветками", description: "Вкуснейшая паста в ресторане Uva. Кушал во время поездки в Питер с Лерочкой", date: .now),
        Food(image: UIImage(named: "Image")!, title: "Карамелле с крабом и креветками", description: "Вкуснейшая паста в ресторане Uva. Кушал во время поездки в Питер с Лерочкой", date: .now),
        Food(image: UIImage(named: "Image")!, title: "Карамелле с крабом и креветками", description: "Вкуснейшая паста в ресторане Uva. Кушал во время поездки в Питер с Лерочкой", date: .now),
        Food(image: UIImage(named: "Image")!, title: "Карамелле с крабом и креветками", description: "Вкуснейшая паста в ресторане Uva. Кушал во время поездки в Питер с Лерочкой", date: .now),
        Food(image: UIImage(named: "Image")!, title: "Карамелле с крабом и креветками", description: "Вкуснейшая паста в ресторане Uva. Кушал во время поездки в Питер с Лерочкой", date: .now),
    ]
    
    
}
