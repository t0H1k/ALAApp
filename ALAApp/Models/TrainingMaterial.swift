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
    let content: String
    
    static func getAllIn() -> [Book] {
        var books: [Book] = []
        
        let chapters = DataStore.shared.chapter
        let subChapters = DataStore.shared.subChapter[1]
        let contents = DataStore.shared.content
        
        let iterationCount = min(
            chapters.count,
            subChapters.count,
            contents.count
        )
        
        for index in 0..<iterationCount {
            books.append(
                Book (
                chapter: chapters[index],
                subChapter: subChapters[index],
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
        let subChapterIndex = subChapterBook[1]
        var subChapters: [SubChapter] = []
        
        for data in 0..<subChapterIndex.count {
            let subChapter = SubChapter(subChapter: subChapterIndex[data])
            subChapters.append(subChapter)
        }
        return subChapters
    }
}

struct Content {
    let content: String
    
    static func getContent() -> [Content] {
        
        let contentBook = DataStore.shared.content
        let contentIndex = contentBook[1]
        var contents: [Content] = []
        
        for data in 0..<contentIndex.count {
            let content = Content(content: contentIndex[data])
            contents.append(content)
        }
        return contents
    }
}
