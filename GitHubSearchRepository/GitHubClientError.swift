//
//  GitHubClientError.swift
//  GitHubSearchRepository
//
//  Created by 伊藤静那(Ito Shizuna) on 2017/07/23.
//  Copyright © 2017年 ShizunaIto. All rights reserved.
//

import Foundation

enum GitHubClientError : Error {
    // 通信に失敗
    case connectionError(Error)
    
    // レスポンスの解釈に失敗
    case responseParseError(Error)
    
    // APIからエラーレスポンスを取得
    case apiError(GitHubAPIError)
}
