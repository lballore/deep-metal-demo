from libs.deepmetal import _calculate_no_repeat_ngram_size


def test_calculate_no_repeat_ngram_size():
    assert _calculate_no_repeat_ngram_size(0.5) == 3
    assert _calculate_no_repeat_ngram_size(0.66) == 6
    assert _calculate_no_repeat_ngram_size(0.85) == 6
    assert _calculate_no_repeat_ngram_size(0.95) == 0
