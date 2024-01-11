//
//  ViewControllerInteractor.swift
//  Keka_Task
//
//  Created by Shantanu - Rooter on 11/01/24.
//

import Foundation

protocol ViewControllerInteractorProtocol {
    func apiCall(completion: @escaping(([Result]?, Error?) -> Void))
}

class ViewControllerInteractor: ViewControllerInteractorProtocol {
    
    func apiCall(completion: @escaping(([Result]?, Error?) -> Void)) {
        
        let baseURL = "https://api.nytimes.com/svc/mostpopular/v2/emailed/7.json?api-key=j5GCulxBywG3lX211ZAPkAB8O381S5SM"
        
        
        if let apiURL = URL(string: baseURL) {
            let task = URLSession.shared.dataTask(with: apiURL) { (data, response, error) in
                if let error = error {
                    print("Some error", error.localizedDescription)
                    completion(nil, error)
                    return
                }
                
                if let data = data {
                    do {
//                        let decoder = JSONDecoder()
//                        let searchDataModel = try decoder.decode(SearchedDataModel.self, from: data)
//                        let searchedResult = searchDataModel.query.pages
                        
                        let decoder = JSONDecoder()
                        let dataModel = try decoder.decode(DataModel.self, from: data)
                        print(dataModel)
                        let results = dataModel.results
                        print("results----->>>>", results)
                        completion(results, nil)
                    } catch {
                        print("parsing error in JSOn")
                        completion(nil, error)
                    }
                }
            }
            task.resume()
        } else {
            print("Invalid url")
        }
    }
}
