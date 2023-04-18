touch:
	@cp template.html $(file)
	@echo "*** created file $(file) ***"
	@code ./$(file)
