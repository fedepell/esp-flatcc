INCLUDEDIRS := config include
PRIV_INCLUDEDIRS := external/grisu3 external/hash external/lex
SRCDIRS := src/runtime

COMPONENT_PRIV_INCLUDEDIRS = $(addprefix flatcc/, \
	$(PRIV_INCLUDEDIRS) \
	)

COMPONENT_SRCDIRS = $(addprefix flatcc/, \
	$(SRCDIRS) \
	)

COMPONENT_ADD_INCLUDEDIRS = $(addprefix flatcc/, \
	$(INCLUDEDIRS) \
	)



