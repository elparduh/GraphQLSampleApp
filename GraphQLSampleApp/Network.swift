//
//  Network.swift
//  GraphQLSampleApp
//
//  Created by Juan Ticante Vicente on 13/12/22.
//

import Apollo

class Network {
  static let shared = Network()

    let url = "https://apollo-fullstack-tutorial.herokuapp.com/graphql"
    
    private(set) lazy var apollo = ApolloClient(url: URL(string: url)!)
}
