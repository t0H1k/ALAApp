//
//  TrainingMaterial.swift
//  ALAApp
//
//  Created by Айтолкун Анарбекова on 26/10/22.
//

struct ChapterBook {
    
    let chapter: String
    
    static func getChapter() -> [ChapterBook] {
        
        let chapterBook = DataStore()
        let chapter = chapterBook.chapter
        
        var chapters: [ChapterBook] = []
        
        for data in 0..<chapter.count {
            chapters.append(
                ChapterBook(
                    chapter: chapter[data]
                )
            )
        }
        return chapters
    }
}

struct SubChapterBook {
    
    let subChapter: String
    let nameSubChapter: String
    
    var fullNameOfSubChapter: String {
        "\(subChapter) \(nameSubChapter)"
    }
    
    
    static func getSubChapter() -> [SubChapterBook] {
        
        let chapterBook = DataStore()
        
        let subChapter = chapterBook.subChapter
        let nameSubChapter = chapterBook.nameSubChapter
        
        var subChapters: [SubChapterBook] = []
        
        for data in 0..<subChapter.count {
            subChapters.append(
                SubChapterBook(
                    subChapter: subChapter[data],
                    nameSubChapter: nameSubChapter[data]
                )
            )
        }
        return subChapters
    }
}
