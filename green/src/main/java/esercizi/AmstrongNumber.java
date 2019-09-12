package esercizi;

import java.util.ArrayList;

public class AmstrongNumber {

	public boolean isAmn(int value) {
		ArrayList<Integer> amn = new ArrayList<>();
		int d = 1;
		int cifra = 1;
		while (cifra != 0) {
			d = d * 10;
			cifra = (value % d) / (d / 10);
			amn.add(cifra);
		}

		int size = amn.size();
		int result = 0;
		for (int i = 0; i < size; i++) {
			result = result + (int) Math.pow(amn.get(i), size);
		}

		if (result == value) {
			return true;
		} else {
			return false;
		}

	}
}
