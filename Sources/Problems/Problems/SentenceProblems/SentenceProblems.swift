public enum SentenceProblems {
    public static var isPalindrome: Problem<String, Bool> {
        return Problem(name: "Sentence is Palindrome",
                       description: """
    Write a function that returns true if the sentence is the same if the letters are reversed.
    """,
                       difficulty: .easy,
                       testCases: [
                        .init(input: "A man, a plan, a canal, Panama!", output: true),
                        .init(input: "Was it a car or a cat I saw?", output: true),
                        .init(input: "Wrong", output: false),
                       ])
    }
    
    public static var reverseVowels: Problem<String, String> {
        return Problem(name: "Reverse Vowels",
                       description: """
    Write a function that reverses the vowels in a word
    """,
                       difficulty: .easy,
                       testCases: [
                        .init(input: "hello", output: "holle"),
                        .init(input: "AEIOU", output: "UOIEA"),
                        .init(input: "DesignGUrus", output: "DusUgnGires"),
                       ])
    }
}
