package main

import "testing"

func TestSum( t *testing.T ) {
	
	expectedResult := sum(5,5);

	if expectedResult != 10 {
		t.Errorf("Test sum failed. Expected = %v", 10);
	}

}