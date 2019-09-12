package esercizi;

public class HammingEx {

	public static int getHammingDistance(String a, String b) {
		if (a.length() != b.length()) {
			throw new IllegalArgumentException("Le stringhe hanno dimensione diversa");
		}

		int size = a.length();
		int hammingDistance = 0;
		for (int i = 0; i < size; i++) {
			if (a.charAt(i) != b.charAt(i)) {
				++hammingDistance;
			}
		}
		return hammingDistance;
	}
}
