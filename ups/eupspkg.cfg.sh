# EupsPkg config file. Sourced by 'eupspkg'

_ensure_pymodule_exists()
{
	python -c "import $2" 2>/dev/null \
		&& msg "found '$1'. ok." \
		|| die "need '$1' to install this product. please install it and try again."
}

prep()
{
	# check for system prerequisites
	_ensure_pymodule_exists pyqt     PyQt4.QtCore
	_ensure_pymodule_exists pytables tables

	default_prep
}
