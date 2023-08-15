public enum WarmupProblems {
    public static var containsDuplicates: Problem<[Int], Bool> {
        return Problem(name: "Contains Duplicates",
                       description: """
    Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.
    """,
                       difficulty: .easy,
                       testCases: [
                        .init(input: [1,2,3,4], output: false),
                        .init(input: [1,2,4,2], output: true),
                       ])
    }
    
    public static var pangram: Problem<String, Bool> {
        return Problem(name: "Sentence is Pangram",
                       description: """
    A pangram is a sentence where every letter of the English alphabet appears at least once.
    
    Given a string sentence containing English letters (lower or upper-case), return true if sentence is a pangram, or false otherwise.
    
    Note: The given sentence might contain other characters like digits or spaces, your solution should handle these too.
    """,
                       difficulty: .easy,
                       testCases: [
                        .init(input: "TheQuickBrownFoxJumpsOverTheLazyDog", output: true),
                        .init(input: "This is not a pangram", output: false),
                       ])
    }
    
    public static var squareRoot: Problem<Int, Int> {
        return Problem(name: "Square Root",
                       description: """
    Given a non-negative integer x, return the square root of x rounded down to the nearest integer. The returned integer should be non-negative as well.
    
    You must not use any built-in exponent function or operator.
    
    For example, do not use pow(x, 0.5) in c++ or x ** 0.5 in python.
    """,
                       difficulty: .easy,
                       testCases: [
                        .init(input: 8, output: 2),
                        .init(input: 9, output: 3),
                       ])
    }
    
    public static var validPalindrome: Problem<String, Bool> {
        return Problem(name: "Valid Palindrome",
                       description: """
    A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.
    
    Given a string s, return true if it is a palindrome, or false otherwise.
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
    Given a string s, reverse only all the vowels in the string and return it.
    
    The vowels are 'a', 'e', 'i', 'o', and 'u', and they can appear in both lower and upper cases, more than once.
    """,
                       difficulty: .easy,
                       testCases: [
                        .init(input: "hello", output: "holle"),
                        .init(input: "AEIOU", output: "UOIEA"),
                        .init(input: "DesignGUrus", output: "DusUgnGires"),
                       ])
    }
    
    public static var validAngram: Problem<(String, String), Bool> {
        return Problem(name: "Valid Angram",
                       description: """
    Given two strings s and t, return true if t is an anagram of s, and false otherwise.
    
    An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.
    """,
                       difficulty: .easy,
                       testCases: [
                        .init(input: ("listen", "silent"), output: true),
                        .init(input: ("rat", "car"), output: false),
                        .init(input: ("hello", "world"), output: false),
                       ])
    }
    
    public static var shortestWordDistance: Problem<([String], String, String), Int> {
        return Problem(name: "Shortest Word Distance",
                       description: """
    Given an array of strings words and two different strings that already exist in the array word1 and word2, return the shortest distance between these two words in the list.
    """,
                       difficulty: .easy,
                       testCases: [
                        .init(input: (["the", "quick", "brown", "fox", "jumps", "over", "the", "lazy", "dog"], "fox", "dog"),
                              output: 5),
                        .init(input: (["a", "c", "d", "b", "a"], "a", "b"),
                              output: 1),
                        .init(input: (["a", "b", "c", "d", "e"], "a", "e"),
                              output: 4),
                       ])
    }
    
    public static var numberOfGoodPairs: Problem<[Int], Int> {
        return Problem(name: "Number of Good Pairs (easy)",
                       description: """
    Given an array of integers nums, return the number of good pairs.
    
    A pair (i, j) is called good if nums[i] == nums[j] and i < j.
    """,
                       difficulty: .easy,
                       testCases: [
                        .init(input: [1,2,3,1,1,3],
                              output: 4),
                        .init(input: [1,1,1,1],
                              output: 6),
                        .init(input: [1,2,3],
                              output: 0),
                       ])
    }
    
}
