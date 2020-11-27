//
//  NetworkResult.swift
//  SOPT_iOS_6th_seminar
//
//  Created by Seri Park on 2020/11/24.
//

import Foundation
// 서버 통신에 대한 결과(성공, 요청에러, 경로에러, 서버내부에러, 네트워크 연결 실패)
enum NetworkResult<T> {
    case success(T)
    case requestErr(T)
    case pathErr
    case serverErr
    case networkFail
}
