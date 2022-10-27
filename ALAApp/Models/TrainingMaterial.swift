//
//  TrainingMaterial.swift
//  ALAApp
//
//  Created by Айтолкун Анарбекова on 26/10/22.
//

//struct ChapterBook {
//
//    let chapter: String
//
//    static func getChapter() -> [ChapterBook] {
//
//        let chapterBook = DataStore()
//        let chapter = chapterBook.chapter
//
//        var chapters: [ChapterBook] = []
//
//        for data in 0..<chapter.count {
//            chapters.append(
//                ChapterBook(
//                    chapter: chapter[data]
//                )
//            )
//        }
//        return chapters
//    }
//}
//
//struct SubChapterBook {
//
//    let subChapter: String
//    let nameSubChapter: String
//    let detailChapter: String  // @Добавил текст главы (попытка не пытка)
//
//    var fullNameOfSubChapter: String {
//        "\(subChapter) \(nameSubChapter)"
//    }
//
//
//    static func getSubChapter() -> [SubChapterBook] {
//
//        let chapterBook = DataStore()
//
//        let subChapter = chapterBook.subChapter
//        let nameSubChapter = chapterBook.nameSubChapter
//        let detailChapter = chapterBook.textOfDetailChapter14 // и сюда
//
//        var subChapters: [SubChapterBook] = []
//
//        for data in 0..<subChapter.count {
//            subChapters.append(
//                SubChapterBook(
//                    subChapter: subChapter[data],
//                    nameSubChapter: nameSubChapter[data],
//                    detailChapter: detailChapter[data] // и сюда
//                )
//            )
//        }
//        return subChapters
//    }
//}

struct Book {
    let chapter: String
    let subChapter: String
    let nameSubChapter: String
    let content: String
    
    var fullNameOfSubChapter: String {
            "\(subChapter) \(nameSubChapter)"
        }
    
    static func getAllIn() -> [Book] {
        var books: [Book] = []
        
        let chapters = DataStore.shared.chapter
        let subChapters = DataStore.shared.subChapter
        let nameSubChapters = DataStore.shared.nameSubChapter
        let contents = DataStore.shared.textOfDetailChapter14
        
        let iterationCount = min(
            chapters.count,
            subChapters.count,
            nameSubChapters.count,
            contents.count
        )
        
        for index in 0..<iterationCount {
            books.append(
                Book (
                chapter: chapters[index],
                subChapter: subChapters[index],
                nameSubChapter: nameSubChapters[index],
                content: chapters[index]
            ))
        }
        return books
    }
}

struct Chapter {
    let chapter: String
    
    static func getChapter() -> [Chapter] {
        
        let chapterBook = DataStore.shared.chapter
        var chapters: [Chapter] = []
        
        for data in 0..<chapterBook.count {
            let chapter = Chapter(chapter: chapterBook[data])
            chapters.append(chapter)
        }
        return chapters
    }
}

struct SubChapter {
    let subChapter: String
    
    static func getSubChapter() -> [SubChapter] {
        
        let subChapterBook = DataStore.shared.subChapter
        var subChapters: [SubChapter] = []
        
        for data in 0..<subChapterBook.count {
            let subChapter = SubChapter(subChapter: subChapterBook[data])
            subChapters.append(subChapter)
        }
        return subChapters
    }
}

struct NameSubChapter {
    let nameSubChapter: String
    
    static func getNameSubChapter() -> [NameSubChapter] {
        
        let nameSubChapter = DataStore.shared.nameSubChapter
        var names: [NameSubChapter] = []
        
        for data in 0..<nameSubChapter.count {
            let name = NameSubChapter(nameSubChapter: nameSubChapter[data])
            names.append(name)
        }
        return names
    }
}

struct Content {
    let content: String
    
    static func getContent() -> [Content] {
        let contentBook = DataStore.shared.textOfDetailChapter14
        var contents: [Content] = []
        
        for data in 0..<contentBook.count {
            let content = Content(content: contentBook[data])
            contents.append(content)
        }
        return contents
    }
}
