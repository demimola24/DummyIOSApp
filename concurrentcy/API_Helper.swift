//
//  PokeAPI_Helper.swift
//  concurrentcy
//
//  Created by Cambrian on 2023-09-11.
//

import Foundation

enum API_Errors: Error {
    case CANNOT_PARSE_DATA_INTO_JSON
    case CANNOT_CONVERT_STRING_TO_URL
}

class API_Helper{
    static private let baseURL_String = "https://www.boredapi.com/api/activity"
    
    static private let mmobomb_String = "https://api.gemini.com/v1/symbols"
    
    static private let digimon_String = "https://digimon-api.vercel.app/api/digimon/"
    
    
    
    static public func fetchBoredAPI() async throws -> Any{
        guard
            let url = URL(string: baseURL_String)
        else {throw API_Errors.CANNOT_CONVERT_STRING_TO_URL}
        
        do{
            let (data, response) = try await URLSession.shared.data(from: url)
            
            //print(response)
            
            let jsonObject = try JSONSerialization.jsonObject(with: data)
        
            return jsonObject
        } catch {
            throw error
        }
    }
    
    static public func fetchMmobombAPI() async throws -> Any{
        guard
            let url = URL(string: mmobomb_String)
        else {throw API_Errors.CANNOT_CONVERT_STRING_TO_URL}
        
        do{
            let (data, response) = try await URLSession.shared.data(from: url)
            
            //print(response)
            
            let jsonObject = try JSONSerialization.jsonObject(with: data)
        
            return jsonObject
        } catch {
            throw error
        }
    }
    
    static public func fetchDigimonAPI() async throws -> Any{
        guard
            let url = URL(string: digimon_String)
        else {throw API_Errors.CANNOT_CONVERT_STRING_TO_URL}
        
        do{
            let (data, response) = try await URLSession.shared.data(from: url)
            
            //print(response)
            
            let jsonObject = try JSONSerialization.jsonObject(with: data)
        
            return jsonObject
        } catch {
            throw error
        }
    }
}
