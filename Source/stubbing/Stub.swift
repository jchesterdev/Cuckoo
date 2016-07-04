//
//  Stub.swift
//  Cuckoo
//
//  Created by Filip Dolnik on 29.05.16.
//  Copyright © 2016 Brightify. All rights reserved.
//

public protocol Stub {
    var method: String { get }
}

public class ConcreteStub<IN, OUT>: Stub {
    public let method: String
    let parameterMatchers: [AnyMatcher<IN>]
    var actions: [StubAction<IN, OUT>] = []
    
    init(method: String, parameterMatchers: [AnyMatcher<IN>]) {
        self.method = method
        self.parameterMatchers = parameterMatchers
    }
    
    func appendAction(action: StubAction<IN, OUT>) {
        actions.append(action)
    }
}