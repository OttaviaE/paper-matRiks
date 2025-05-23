# Generated by `rjournal_pdf_article()` using `knitr::purl()`: do not edit by hand
# Please edit matRiks-paper.Rmd to modify this file

## ----setup, include=FALSE--------------------------------------------------------------------------------------------------
knitr::opts_chunk$set(echo = FALSE, warning = FALSE, message = FALSE)
library(plotly)
library(ggplot2)
library(palmerpenguins)
library(kableExtra)
library(data.table)
library(matRiks)
library(knitr)
library(kableExtra)
library(tidyverse)


## ----visuoRule, out.width="70%", fig.align="center", fig.cap="Example of visuospatial rule: Changes in size"---------------
a = mat_apply(maxi(), hrules = "size")

par(mfrow =c(1, 3) ,
        mar = c(6,5,5,5))

draw(a$Sq1); draw(a$Sq2); draw(a$Sq3)


## ----logiRule, out.width="70%", fig.align="center", fig.cap="Example of logical rule: Insiemistic Interscetion AND"--------
size.x = 8 
size.y = 4 
pos.x = 0 
shd = NA 
lty = 1 
lwd = 3

par(mfrow =c(1, 3) ,
        mar = c(6,5,5,5))

a = mat_apply(cof(luck(pos.x = pos.x + size.x, pos.y = pos.x, rot = pi, 
        size.x = size.x, size.y = size.y, shd = shd, lty = lty, 
        lwd = lwd), luck(pos.x = pos.x - size.x, pos.y = pos.x, 
        rot = -pi, size.x = size.x, size.y = size.y, shd = shd, 
        lty = lty, lwd = lwd), luck(pos.x = pos.x, pos.y = pos.x + 
        size.x, rot = -pi, size.x = size.y, size.y = size.x, 
        shd = shd, lty = lty, lwd = lwd), luck(pos.x = pos.x, 
        pos.y = pos.x - size.x, rot = -pi, size.x = size.y, size.y = size.x, 
        shd = shd, lty = lty, lwd = lwd)), hrules = "AND")

draw(a$Sq1); draw(a$Sq2); draw(a$Sq3)


## ----eval = FALSE, echo = TRUE---------------------------------------------------------------------------------------------
# install.packages("matRiks")


## ----echo = TRUE-----------------------------------------------------------------------------------------------------------
square()$tag


## ----echo=FALSE------------------------------------------------------------------------------------------------------------
malta()$tag


## ----square, echo = TRUE, fig.cap = "A simple square", out.width="70%", fig.align='center'---------------------------------
draw(square())


## ----figures-list-interactive, eval = knitr::is_html_output()--------------------------------------------------------------
# tbl_img <- data.table(
#   "Figure Category" = c("[Black figures](https://cran.r-project.org/web/packages/matRiks/vignettes/black-figures.html)", "[Circle sections](https://cran.r-project.org/web/packages/matRiks/vignettes/circle-sections.html)", "[Closed figures](https://cran.r-project.org/web/packages/matRiks/vignettes/closed-figures.html)"),
#   Example = "",
#   "Figure Category"  = c("[Flowers figures](https://cran.r-project.org/web/packages/matRiks/vignettes/flowers-figures.html)", "[Eight-shaped figures](https://cran.r-project.org/web/packages/matRiks/vignettes/eight-shapes-figures.html)", "[Lines](https://cran.r-project.org/web/packages/matRiks/vignettes/lines.html)"),
#   Example = "",
#   "Figure Category" = c("[Other figures](https://cran.r-project.org/web/packages/matRiks/vignettes/other-figures.html)", "", ""),
#   Example = ""
# )
# 
# tbl_img %>%
#   kbl(booktabs = TRUE, caption = "List of figures and related vignettes.") %>%
#   kable_paper(full_width = FALSE) %>%
#   column_spec(2, image = spec_image(
#     c("black-figures.png", "circle-sections.png", "closed-figures.png"), 50, 50, 50)) %>%
#   column_spec(4, image = spec_image(
#     c("flowers.png", "eight-shapes-figures.png", "lines.png"), 50, 50, 50)) %>%
#     column_spec(6,
#                 image = spec_image(
#     c("other-figures.png","empty.png","empty.png"  ), 50,50,50))


## ----figures-list-static, eval = knitr::is_latex_output()------------------------------------------------------------------
tbl_img = data.table(
  `Figure Category` = c("\\href{https://cran.r-project.org/web/packages/matRiks/vignettes/black-figures.html}{Black Figures}", 
                        "\\href{https://cran.r-project.org/web/packages/matRiks/vignettes/circle-sections.html}{Circle sections}", 
                        "\\href{https://cran.r-project.org/web/packages/matRiks/vignettes/closed-figures.html}{Closed figures}"),
  Example = "", 
  `Figure Category` =  c("\\href{https://cran.r-project.org/web/packages/matRiks/vignettes/flowers-figures.html}{Flowers figures}", 
                         "\\href{https://cran.r-project.org/web/packages/matRiks/vignettes/eight-shapes-figures.html}{Eight-shaped figures}", "\\href{https://cran.r-project.org/web/packages/matRiks/vignettes/lines.html}{Lines}"), 
  Example = "", 
  `Figure Category` = c("\\href{https://cran.r-project.org/web/packages/matRiks/vignettes/other-figures.html}{Other figures}", "", ""), 
  Example = ""
  
)

tbl_img %>%
  kbl(escape = FALSE, caption = "List of figures and related vignettes.") %>%  # Non escapare i comandi LaTeX
  column_spec(2, image = spec_image(
    c("black-figures.png", "circle-sections.png", "closed-figures.png"), 50,50,50)) %>%
  column_spec(4, image = spec_image(
    c("flowers.png", "eight-shapes-figures.png", "lines.png"), 50, 50, 50)) %>% 
    column_spec(6,
                image = spec_image(
    c("other-figures.png","empty.png","empty.png" ), 50,50,50))%>%  
  column_spec(1:6, width = "2cm") 


## ----eye, fig.cap="Example of concatenation of circle and dot to obtain an eye-like figure.", echo = TRUE------------------
eye <- cof(circle(), dot()) # create the new figure eye by concatenating the circle and the dot
draw(eye)


## ----echo=TRUE-------------------------------------------------------------------------------------------------------------
eye$shape


## ----echo=TRUE-------------------------------------------------------------------------------------------------------------
s_eye <- cof(circle(),dot(),single = TRUE, name = "eye")
s_eye$shape


## ----fourCell-interactive, eval = knitr::is_html_output(), layout = "l-body-outset"----------------------------------------
# four = matrix(paste("Sq", 1:4, sep = ""), nrow = 2)
# 
# kable(four, align = "c", caption="Four-cell matrix") %>%
#   kable_paper(full_width = TRUE)


## ----fourCell-static, eval = knitr::is_latex_output(), layout = "l-body-outset"--------------------------------------------
four = matrix(paste("Sq", 1:4, sep = ""), nrow = 2)

kable(four, align = "c", caption="Four-cell matrix") 


## ----nineCell-interactive, eval = knitr::is_html_output(), layout = "l-body-outset"----------------------------------------
# nine = matrix(paste("Sq", 1:9, sep = ""), nrow = 3)
# 
# kbl(nine, align = "c",  caption="Nine-cell matrix") %>%
#   kable_paper(full_width = TRUE)


## ----nineCell-static, eval = knitr::is_latex_output(), layout = "l-body-outset"--------------------------------------------
nine = matrix(paste("Sq", 1:9, sep = ""), nrow = 3)
kbl(nine, align = "l", 
    caption = "Nine-cell matrix") 


## ----warning=FALSE---------------------------------------------------------------------------------------------------------
names( mat_apply(lily()))


## ----IncrementalInv, out.width="70%", fig.align="center", fig.cap="Example of incremental rule with reverse application: Change in size"----

a = mat_apply(square(size.x=10), hrules = "size.inv")

par(mfrow =c(1, 3) ,
        mar = c(6,5,5,5))

draw(a$Sq1); draw(a$Sq2); draw(a$Sq3)


## ----PermutationalInv, out.width="70%", fig.align="center", fig.cap="Example of  permutational rule with reverse application: Change of shape"----
par(mfrow =c(1, 3) ,
        mar = c(6,5,5,5))

a = mat_apply(cof(triangle(),pentagon(),square()), hrules = "shape.inv")

draw(a$Sq1); draw(a$Sq2); draw(a$Sq3)


## ----rule-types, eval = knitr::is_html_output(), layout = "l-body-outset"--------------------------------------------------
# 
# rule_types = data.table(Rule	 =c("	Identity	","	AND	","	OR	","	XOR	","	line width	","	line type	","	rotate	","	size	","	shape	","	shade	","	multi shade	"),
# 
# Classification	 =c("		","	logical	","	logical	","	logical	","	permutational	","	permutational	","	incremental	","	incremental	","	permutational	","	permutational	","	permutational	"),
# 
# Function	 =c("	`identity`	","	`logical`	","	`logical`	","	`logical` 	","	`margin`	","	`margin`	","	`rotate`	","	`size`	","	`shape`	","	`shade`	","	`shade`	"),
# 
# Definition	 =c("	Return the orginal figure without any transformation	",
#                "	Considering the input cell `fig`, a concatenation of at least three figures is partitioned into three sets: A, B, and C. The rule transforms the figures such that each row or column in the matrix follows a specific sequence of patterns. In these patterns, the first cell displays figures {A, C}, the second cell displays {A, B}, and the third one exclusively displays figure A. The partitioning of the figures into sets A, B, and C is randomly determined with a random seed based on the  `n` rows/columns of the matrix.	",
#                "	Considering the input cell `fig`, a concatenation of at least three figures is partitioned into three sets: A, B, and C. The rule transform the figures, such that each row or column in the matrix follows a specific sequence of patterns. In these patterns, the first cell displays figures {A, C}, the second cell displays {A, B}, and the third one combines all of them in {A,B,C}. The partitioning of the figures into sets A, B, and C is randomly determined with a random seed based on the  `n` rows/columns of the matrix.	",
#                "Considering the input cell `fig`, a concatenation of at least three figures is partitioned into three sets: A, B, and C. The rule transform the figures, such that each row or column in the matrix follows a specific sequence pattern. In these patterns, the first elements display figures {A, C}, the second display {A, B}, and the third display {B,C}. The partitioning of the figures into sets A, B, and C is randomly determined with a random seed based on the  `n` rows/columns of the matrix.	",
#                "	Considering a figure or concatenation of figures, the `lwd` rule increases the width of the lines in the figure by a constant value `n` corresponding to the number of row or column in the matrix. Therefore, the width can have values 1, 2, or 3 of the default width argument of the R plot. Conversely, the reverse rule `lwd.inv` decreases the line width by the same quantity.	",
#                "	Considering a figure or concatenation of figures, the `lty` rule changes the lines type manipulating the lines type argument of the R plot. In the default order with the values of `n` from 1 to 3, the lines are  `dashed`, `dotted`, and   `solid`, respectively. Using the reverse rule, with the values of `n` from 1 to 3, `lty.inv` has the order `dashed`, `solid`, and `dotted`.   	",
#                "	Considering a figure or concatenation of figures and an angle $\\theta$, the rule rotates the figure around its center clockwise of an angle $n \\theta$, where $n$ is the argument `n` of the function. The value of $\\theta$ is equal to $\\pi$ divided by any number from 1 to 9 included in the `rule` argument of the function, for instance, `rule=rotation.5` have a  $\\theta = \\pi / 5$.  By default $\\theta = \\pi / 4$ . The reverse rule `rotation.inv` rotates the figure anticlockwise. 	",
#                "	Considering a figure or concatenation of figures and a constant $k$, the rule size decreases the figure size proportionally to $nk$ , where $n$ is the argument `n` of the function. Specifically, the `size.x` and `size.y` arguments of the figure are divided by $nk$. The default value of $k=.9$. The reverse rule `size.inv` increases the figure arguments `size.x` and `size.y` of  $nk$ times with a default value of $k=.6$.	",
#                "	Considering a concatenation of three single figures denoted A, B, and C, the `shape` rule permutates which figure is visible in each cells of the matrix. The default order is figures A, B, and C from left to right in the row or from up to bottom in the column. The reverse rule `shape.inv` has the order C, B, and A.   	",
#                "	Considering a figure or concatenation of figures, the `shade` rule changes the color of the filling. The argument `n` of the function goes from 1 to 3 and it is mapped into `white`, `grey`, and   `black, respectively. The rule ignore any previous color presented in the figure.For instance, when $n=1$ and a figure has `shd=black`the application of the rule transforms it into `white`. It does not exist a reverse rule available at the moment.   	",
#                "	Considering a concatenation of figures the `multi.shade` rule changes the color of the filling of each figure separately. The rules work exactly as the normal `shade` but a random color is assigned to each figure before the transformation.  The random color is assigned with the function `sample` with `seed(n)`.")
# 
# )	
# 
# kbl(rule_types, align = "l", caption = "Types of Rules") %>%
#   kable_paper(full_width = FALSE) %>%
#   column_spec(1, bold = TRUE) %>%
#   collapse_rows( valign = "top")
# 


## ----rule-types-static, eval = knitr::is_latex_output(), layout = "l-body-outset"------------------------------------------

rule_types = data.table(Rule = c("Identity", "AND", "OR", "XOR", "line width", "line type", "rotate", "size", "shape", "shade", "multi shade"),
                        
Classification = c("", "logical", "logical", "logical", "permutational", "permutational", "incremental", "incremental", "permutational", "permutational", "permutational"),

Function = c("\\texttt{identity}", "\\texttt{logical}", "\\texttt{logical}", "\\texttt{logical}", "\\texttt{margin}", "\\texttt{margin}", "\\texttt{rotate}", "\\texttt{size}", "\\texttt{shape}", "\\texttt{shade}", "\\texttt{shade}"),

Definition = c("Return the original figure without any transformation",
               "Considering the input cell \\texttt{fig}, a concatenation of at least three figures is partitioned into three sets: A, B, and C. The rule transforms the figures such that each row or column in the matrix follows a specific sequence of patterns. In these patterns, the first cell displays figures $\\{A, C\\}$, the second cell displays $\\{A, B\\}$, and the third one exclusively displays figure A. The partitioning of the figures into sets A, B, and C is randomly determined with a random seed based on the \\texttt{n} rows/columns of the matrix.",
               "Considering the input cell \\texttt{fig}, a concatenation of at least three figures is partitioned into three sets: A, B, and C. The rule transforms the figures such that each row or column in the matrix follows a specific sequence of patterns. In these patterns, the first cell displays figures $\\{A, C\\}$, the second cell displays $\\{A, B\\}$, and the third one combines all of them in $\\{A, B, C\\}$. The partitioning of the figures into sets A, B, and C is randomly determined with a random seed based on the \\texttt{n} rows/columns of the matrix.",
               "Considering the input cell \\texttt{fig}, a concatenation of at least three figures is partitioned into three sets: A, B, and C. The rule transforms the figures such that each row or column in the matrix follows a specific sequence pattern. In these patterns, the first elements display figures $\\{A, C\\}$, the second display $\\{A, B\\}$, and the third display $\\{B, C\\}$. The partitioning of the figures into sets A, B, and C is randomly determined with a random seed based on the \\texttt{n} rows/columns of the matrix.",
               "Considering a figure or concatenation of figures, the \\texttt{lwd} rule increases the width of the lines in the figure by a constant value \\texttt{n} corresponding to the number of rows or columns in the matrix. Therefore, the width can have values 1, 2, or 3 of the default width argument of the R plot. Conversely, the reverse rule \\texttt{lwd.inv} decreases the line width by the same quantity.",
               "Considering a figure or concatenation of figures, the \\texttt{lty} rule changes the line type by manipulating the line type argument of the R plot. In the default order with the values of \\texttt{n} from 1 to 3, the lines are \\texttt{dashed}, \\texttt{dotted}, and \\texttt{solid}, respectively. Using the reverse rule, with the values of \\texttt{n} from 1 to 3, \\texttt{lty.inv} has the order \\texttt{dashed}, \\texttt{solid}, and \\texttt{dotted}.",
               "Considering a figure or concatenation of figures and an angle $\\theta$, the rule rotates the figure around its center clockwise by an angle $n\\theta$, where $n$ is the argument \\texttt{n} of the function. The value of $\\theta$ is equal to $\\pi$ divided by any number from 1 to 9 included in the \\texttt{rule} argument of the function. For instance, \\texttt{rule=rotation.5} sets $\\theta = \\pi / 5$. By default, $\\theta = \\pi / 4$. The reverse rule \\texttt{rotation.inv} rotates the figure anticlockwise.",
               "Considering a figure or concatenation of figures and a constant $k$, the rule \\texttt{size} decreases the figure size proportionally to $nk$, where $n$ is the argument \\texttt{n} of the function. Specifically, the \\texttt{size.x} and \\texttt{size.y} arguments of the figure are divided by $nk$. The default value of $k=0.9$. The reverse rule \\texttt{size.inv} increases the figure arguments \\texttt{size.x} and \\texttt{size.y} by $nk$ times, with a default value of $k=0.6$.",
               "Considering a concatenation of three single figures denoted A, B, and C, the \\texttt{shape} rule permutates which figure is visible in each cell of the matrix. The default order is figures A, B, and C from left to right in the row or from top to bottom in the column. The reverse rule \\texttt{shape.inv} has the order C, B, and A.",
               "Considering a figure or concatenation of figures, the \\texttt{shade} rule changes the color of the filling. The argument \\texttt{n} of the function goes from 1 to 3 and is mapped into \\texttt{white}, \\texttt{grey}, and \\texttt{black}, respectively. The rule ignores any previous color present in the figure. For instance, when \\texttt{n=1} and a figure has \\texttt{shd=black}, the application of the rule transforms it into \\texttt{white}. There is no reverse rule available at the moment.",
               "Considering a concatenation of figures, the \\texttt{multi.shade} rule changes the color of the filling of each figure separately. The rule works exactly as the normal \\texttt{shade}, but a random color is assigned to each figure before the transformation. The random color is assigned with the function \\texttt{sample} using \\texttt{seed(n)}."
              ))

kbl(rule_types, align = "l", caption = "Types of Rules", 
    escape = FALSE, format = "latex",
  longtable = TRUE) %>%
  kable_paper(full_width = FALSE) %>%
  column_spec(1, bold = TRUE) %>%  
  column_spec(1, width = "2cm") %>%
  column_spec(2, width = "2cm") %>%
  column_spec(3, width = "2cm") %>% 
  column_spec(4, width = "6cm")
 


## ----incremental, fig.cap="Example of size rule transformation along a row."-----------------------------------------------
a = mat_apply(square(size.x=10), hrules = "size")
par(mfrow =c(1, 3) ,
        mar = c(6,5,5,5))
draw(a$Sq1); draw(a$Sq2); draw(a$Sq3)


## ----permutational, fig.cap="Example of shape rule transformation along a row."--------------------------------------------
a = mat_apply(cof(hexagon(),pentagon(),square()), hrules = "shape")
par(mfrow =c(1, 3), mar = c(6,5,5,5))
draw(a$Sq1)
draw(a$Sq2)
draw(a$Sq3)


## ----examplestep1, fig.cap="Example of outcome of the first step of the mat_apply procedure."------------------------------
draw(mat_apply(cof(square(), circle(),dot())))


## ----single-matrix, fig.cap="Single-layer matrix with two rules manipulated horizontally (Shape and filling) and one rules manipulated vertically (Orientation)"----
single_matrix <- mat_apply(cof(hexagon(), pacman(), pentagon()),
                           mat.type = 9, hrules = c("shade", "shape"), 
                           vrules = "rotate")
draw(single_matrix)


## ----multi-matrix, fig.cap="Multi-layer matrix with two rules manipulated horizontally (shape and filling) and one rule manipulated vertically (orientation)"----
multi_a <- mat_apply(cof(hexagon(), square(size.x = 17), pentagon()),
                           mat.type = 9, hrules = c("shape"))

multi_b <- mat_apply(size(pacman(), 1),
                           mat.type = 9, vrules = c("rotate"))

multi_c <- mat_apply(size(triangle(), 4),
                           mat.type = 9, hrules = c("shade"))


multi_matrix = com(multi_a, multi_b, multi_c)

draw(multi_matrix)



## ----multi-a, fig.cap="Layer 1 (Background matrix)", out.width="80%"-------------------------------------------------------
draw(multi_a)


## ----multi-b, fig.cap="Layer 2", out.width="80%"---------------------------------------------------------------------------
draw(multi_b)


## ----multi-c, fig.cap="Layer 3 (Foreground matrix)", out.width="80%"-------------------------------------------------------
draw(multi_c)


## ----eval = F, echo =T-----------------------------------------------------------------------------------------------------
# com(multi_a, multi_b, multi_c)


## ----dist-types-tab-interactive, eval = knitr::is_html_output(), layout = "l-body-outset"----------------------------------
# dist_types = data.table(Distractors = c("R-Left", "R-Top", "R-diag", "Wp-Copy",
#                                        "WP-Matrix",
#                                       "Difference",
#                                       "IC-Inc", "", "", "",
#                                        "IC-Neg", "", "",
#                                        "IC-Flip", "","",
#                                       "IC-Scale", "", ""),
#                        "$3 \\times 3$ matrices" = c("SQ8", "SQ6", "SQ5",
#                                       "SQ1 or SQ3",
#                                       "SQ1 or SQ3 with the superimposition of another cell.",
#                                       "SQ1 or SQ3, SQ4, SQ7 with the superimposition of a figure which is not manipulated in the matrix." ,
#                                       "It is the correct response with a missing element", "Single-Layer: Not possible",
#                                       "Multi-layer: The most internal figure is removed from the correct response.", "Logic matrices: The element that is removed is randomly selected.",
#                                       "Color inversion of the correct response (single-layer matrix) or of one of its figures (multi-layer matrix)", "Single-layer matrix: 	Color inversion of the figure in the correct response", "Multi-layer matrix: Color inversion of the most internal figure of the correct response",
#                                       "Rotation or reflection of the correct response (single-layer matrix) or of one of its figures (multi-layer matrix)", "Single-layer matrix: Reflection/Rotation of the figure in the correct response", "Multi-layer matrix: Reflection/Rotation of the most internal figure of the correct response",
#                                       "Resize of the correct response (single-layer matrix) or of one of its figures (multi-layer matrix)", "Single-layer: Resize of the figure in the correct response", "Multi-layer matrix: Only the most internal figure in the correct response is resized"),
#                        "$2 \\times 2$ matrices" = c("SQ3", "SQ2", "SQ1",
#                                                     "SQ1",
#                                                     "SQ3 or SQ2 with the superimposition of the rotation of WP-Copy",
#                                                     "SQ3 or SQ1 with the superimposition of a figure that is not manipulated in the matrix",
#                                                     rep("Same as $3\\times 3$ matrices", 13)))
# 
# 
# kbl(dist_types, align = "l", caption = "Definition of the distractors implemented in the \\pkg{matRiks} package for $3 \\times 3$ and $2 \\times 2$ matrices") %>%
#   kable_paper(full_width = T)


## ----dist-types-tab-static, eval = knitr::is_latex_output(), layout = "l-body-outset"--------------------------------------
dist_types = data.table(
  Distractors = c("R-Left", "R-Top", "R-diag", "Wp-Copy",
                  "WP-Matrix",
                  "Difference",
                  "IC-Inc", "", "", "",
                  "IC-Neg", "", "",
                  "IC-Flip", "","",
                  "IC-Scale", "", ""),
  `3 x 3 matrices` = c("SQ8", "SQ6", "SQ5",
                              "SQ1 or SQ3",
                              "SQ1 or SQ3 with the superimposition of another cell.",
                              "SQ1 or SQ3, SQ4, SQ7 with the superimposition of a figure which is not manipulated in the matrix." ,
                              "It is the correct response with a missing element", "Single-Layer: Not possible",
                              "Multi-layer: The most internal figure is removed from the correct response.", "Logic matrices: The element that is removed is randomly selected.",
                              "Color inversion of the correct response (single-layer matrix) or of one of its figures (multi-layer matrix)", "Single-layer matrix: 	Color inversion of the figure in the correct response", "Multi-layer matrix: Color inversion of the most internal figure of the correct response",
                              "Rotation or reflection of the correct response (single-layer matrix) or of one of its figures (multi-layer matrix)", "Single-layer matrix: Reflection/Rotation of the figure in the correct response", "Multi-layer matrix: Reflection/Rotation of the most internal figure of the correct response",
                              "Resize of the correct response (single-layer matrix) or of one of its figures (multi-layer matrix)", "Single-layer: Resize of the figure in the correct response", "Multi-layer matrix: Only the most internal figure in the correct response is resized"), 
  `2 x 2 matrices` = c("SQ3", "SQ2", "SQ1", 
                              "SQ1", 
                              "SQ3 or SQ2 with the superimposition of the rotation of WP-Copy", 
                              "SQ3 or SQ1 with the superimposition of a figure that is not manipulated in the matrix", 
                              rep("Same as $3\\times 3$ matrices", 13))
)

# Rendering the table with LaTeX expressions in cell values
kbl(dist_types, align = "l", 
    caption = "Definition of the distractors implemented in the \\pkg{matRiks} package for $3 \\times 3$ and $2 \\times 2$ matrices", 
    escape = FALSE) %>%  
  column_spec(1, width = "3cm") %>%
  column_spec(2, width = "5cm") %>%
  column_spec(3, width = "5cm")


## ----echo = TRUE, eval = FALSE---------------------------------------------------------------------------------------------
# response_list(single_matrix)


## ----warning=FALSE---------------------------------------------------------------------------------------------------------
names(response_list(single_matrix))


## ----warning=TRUE----------------------------------------------------------------------------------------------------------
draw(response_list(single_matrix), 
     main = TRUE) # plot the distractor labels


## --------------------------------------------------------------------------------------------------------------------------
draw(response_list(multi_matrix), 
     main = TRUE)


## ----echo = TRUE-----------------------------------------------------------------------------------------------------------
draw(response_list(multi_matrix, seed = 7), 
     main = TRUE)


## --------------------------------------------------------------------------------------------------------------------------
logic1 <- mat_apply(square4(), hrules = "AND")
draw(logic1)


## --------------------------------------------------------------------------------------------------------------------------
logic2 <- mat_apply(miley(), vrules = "OR")
draw(logic2)


## --------------------------------------------------------------------------------------------------------------------------
logic <- com(logic1, logic2)
draw(logic)


## --------------------------------------------------------------------------------------------------------------------------
responses <- response_list(logic)
draw(responses, main = TRUE)


## --------------------------------------------------------------------------------------------------------------------------
responses <- response_list(logic, seed = 12)
draw(responses, main = TRUE)


## --------------------------------------------------------------------------------------------------------------------------
draw(responses, distractors = c("correct", 
                                "r_diag", "r_left", 
                                "wp_copy", "wp_matrix", "difference", "ic_flip", "ic_inc"))

