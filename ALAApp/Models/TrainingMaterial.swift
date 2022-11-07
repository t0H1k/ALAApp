//
//  TrainingMaterial.swift
//  ALAApp
//
//  Created by Айтолкун Анарбекова on 26/10/22.
//

//struct Book {
//    let chapter: String
//    let subChapter: [String]
//    let content: [String]
//
//    static func getBook() -> [Book] {
//        let book = DataStore()
//
//        let chapter = book.chapter
//        let subChapter = book.subChapter
//        let content = book.content
//
//        var books: [Book] = []
//
//        for index in 0..<book.chapter.count {
//            books.append(
//                Book(
//                    chapter: chapter[index],
//                    subChapter: subChapter[index],
//                    content: content[index]
//                )
//            )
//        }
//        return books
//    }
//} Саня сказал, что неверная модель. Снизу переписал вроде верно, оставил на всякий случай

struct Book {
    let chapter: String
    let subChapterStr: [String]
    let subChapter: [SubChapter]
    
    static func getBook() -> [Book] {
        let book = DataStore()
        
        let chapter = book.chapter
        let subChapterStr = book.subChapter
        let subChapter = SubChapter.getSubChapter()
        
        var books: [Book] = []
        
        for index in 0..<chapter.count {
            books.append(
                Book(
                    chapter: chapter[index],
                    subChapterStr: subChapterStr[index],
                    subChapter: subChapter
                )
            )
        }
        return books
    }
}



struct SubChapter {
    let subChapter: [String]
    let content: [String]
    
    static func getSubChapter() -> [SubChapter] {
        let book = DataStore()
        
        let subChapter = book.subChapter
        let content = book.content
        
        var subChapters: [SubChapter] = []
        
        for index in 0..<book.subChapter.count {
            subChapters.append(
                SubChapter(
                    subChapter: subChapter[index],
                    content: content[index]
                )
            )
        }
        return subChapters
    }
}
