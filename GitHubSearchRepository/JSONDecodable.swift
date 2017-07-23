//
//  JSONDecodable.swift
//  GitHubSearchRepository
//
//  Created by 伊藤静那(Ito Shizuna) on 2017/07/23.
//  Copyright © 2017年 ShizunaIto. All rights reserved.
//

protocol JSONDecodable {
    init(json: Any) throws
}
