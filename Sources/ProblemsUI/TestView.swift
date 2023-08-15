//
//  ImplementationTestCasesView.swift
//  App
//
//  Created by Ryan Crosby on 8/17/23.
//

import Problems
import SwiftUI

public class ProblemImplementation<I: ProblemInput, O: ProblemOutput>: ObservableObject {
    let problem: Problem<I, O>
    let test: Problem<I, O>.Test
    
    public init(problem: Problem<I, O>, implementation: @escaping (I) -> O) {
        self.problem = problem
        self.test = problem.testImplementation(implementation)
    }
    
    struct Case: Identifiable {
        let id = UUID()
        let input: I
        let output: O
        let result: O
    }
    
    var name: String { problem.name }
    var description: String { problem.description }
    var passed: Bool { test.passed }
    var cases: [Case] { test.testRuns.map { .init(input: $0.testCase.input,
                                                  output: $0.testCase.output,
                                                  result: $0.result) } }
}

public struct TestView<I: ProblemInput, O: ProblemOutput>: View {
    @ObservedObject var problem: ProblemImplementation<I, O>
    
    public init(_ problemImplementation: ProblemImplementation<I, O>) {
        problem = problemImplementation
    }
        
    public var body: some View {
        VStack {
            Text(problem.name).font(.headline)
            Text(problem.description).frame(maxWidth: .infinity, alignment: .leading)
            if problem.passed {
                Text("Passed!!!")
            } else {
                Text("Failed")
            }
            
            ForEach(problem.cases) { testCase in
                GroupBox {
                    HStack {
                        VStack {
                            HStack {
                                Text("Input: ").bold()
                                Text(String(describing: testCase.input))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            HStack {
                                Text("Output: ").bold()
                                Text(String(describing: testCase.output))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            HStack {
                                Text("Result: ").bold()
                                Text(String(describing: testCase.result))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                        }
                    }
                }
            }
            Spacer()
        }
    }
}

#Preview {
    TestView(.init(problem: Problem.sumNumbers(), implementation: { $0.count }))
}
