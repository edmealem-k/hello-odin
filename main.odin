package main

import "core:fmt"

// 1. Struct definition
Developer :: struct {
	name:  string,
	role:  string,
	score: int,
}

// 2. Procedure with multiple return and switch expression
evaluate_status :: proc(score: int) -> (grade: rune, passed: bool) {
	switch {
	case score >= 90:
		return 'A', true
	case score >= 75:
		return 'B', true
	case score >= 50:
		return 'C', true
	case:
		return 'F', false
	}
}

main :: proc() {
	fmt.println("=== Odin Language Features Demo ===\n")

	// 3. Fixed array of structs
	team := [3]Developer {
		{name = "Alice", role = "Engine Programmer", score = 94},
		{name = "Bob", role = "Graphics Dev", score = 78},
		{name = "Eve", role = "Junior Dev", score = 48},
	}

	// 4. Iteration with index and value
	fmt.println("--- Team Evaluation ---")
	for dev, index in team {
		grade, passed := evaluate_status(dev.score)
		status := "Passed" if passed else "Review Needed"

		fmt.printf("[%d] %s (%s)\n", index + 1, dev.name, dev.role)
		fmt.printf("    Score: %d | Grade: %c | Status: %s\n", dev.score, grade, status)
	}

	fmt.println("\n--- Dynamic Arrays & Defer ---")

	// 5. Dynamic array allocated on the heap
	tags := make([dynamic]string)
	defer delete(tags) // Automatically frees memory when main() exists

	append(&tags, "Pop!_OS", "Odin-Lang", "System-Programming")

	fmt.printf("Dynamic array count: %d\n", len(tags))
	for tag in tags {
		fmt.printf("   * Tag: %s\n", tag)
	}


	fmt.println("\n\n\nFirst day using Odin-Lang")
	fmt.println("Edmealem k.")
	fmt.println("https://github.com/edmealem-k")
	fmt.println("2:51 AM, Saturday, August 29, 2026 (GMT+3), Time in Bahir Dar, Ethiopia")
}
