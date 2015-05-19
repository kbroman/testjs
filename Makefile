all: jspanels jscharts doc
.PHONY: all jspanels jscharts doc

# build package documentation
doc:
	R -e 'devtools::document()'

PANEL_DIR = inst/htmlwidgets/lib/panels
SCATTERPLOT_DIR = ${PANEL_DIR}/scatterplot
CHART_DIR = inst/htmlwidgets

COFFEE_ARGS = -c # use -cm for debugging; -c otherwise

# javascript of panels
JSPANELS = ${SCATTERPLOT_DIR}/scatterplot.js ${PANEL_DIR}/panelutil.js
jspanels: ${JSPANELS}

${PANEL_DIR}/%.js: ${PANEL_DIR}/%.coffee
	coffee ${COFFEE_ARGS} -b $^

JSCHARTS = ${CHART_DIR}/iplot.js
jscharts: ${JSCHARTS}

${CHART_DIR}/%.js: ${CHART_DIR}/%.coffee
	coffee ${COFFEE_ARGS} -b $^

# remove all data files and javascript files
clean:
	rm ${PANEL_DIR}/*.js ${PANEL_DIR}/*/*.js ${CHART_DIR}/*.js
