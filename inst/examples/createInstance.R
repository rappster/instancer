
# Intro -------------------------------------------------------------------

createInstance(of = "test_class")
createInstance(of = "test_class", with = letters[1:3])
createInstance(of = "test_class", with = letters[1:3], inherits = FALSE)

# Additional attributes ---------------------------------------------------

createInstance(of = "test_class", with = letters[1:3],
  attributes = list(attr_1 = TRUE, attr_2 = "yep!"))
createInstance(of = "test_class", with = letters[1:3],
  attributes = list(my_attrs = list(attr_1 = TRUE, attr_2 = "yep!")))

# Preserve data frames ----------------------------------------------------

# A data frame is automatically "reduced" to its list structure if no
# inheritance is involved
structure(mtcars, class = "test_class")

# Therefore it seems to be best to throw an error in case the user wants to try
# this in order to make it explicit to chose a list input if that's what he
# wants
createInstance(of = "test_class", with = mtcars, inherits = FALSE)
createInstance(of = "test_class", with = unclass(mtcars), inherits = FALSE)
