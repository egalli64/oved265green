package green;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

import esercizi.HammingEx;

class GetHammingTest {

	@Test
	void testHammingDistance() {
		String a = "ba8";
		String b= "bau";
		int actual= HammingEx.getHammingDistance(a, b);
		int expected = 1;
		assertEquals(expected, actual);
		}

}
