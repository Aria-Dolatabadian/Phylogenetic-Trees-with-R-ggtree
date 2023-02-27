library(tidyverse)
library(ggtree)

tree <- read.tree("tree_newick.nwk")
tree

# build a ggplot with a geom_tree
ggplot(tree) + geom_tree() + theme_tree()

# This is convenient shorthand
ggtree(tree)

# add a scale
ggtree(tree) + geom_treescale()

# or add the entire scale to the x axis with theme_tree2()
ggtree(tree) + theme_tree2()

ggtree(tree, branch.length="none")

ggtree(tree, branch.length="none", color="blue", size=2, linetype=3)


ggtree(tree) + geom_text(aes(label=node), hjust=-.3)


ggtree(tree) + geom_tiplab()

ggtree(tree) + 
  geom_cladelabel(node=17, label="Some random clade", color="red")


ggtree(tree) + 
  geom_tiplab() + 
  geom_cladelabel(node=17, label="Some random clade", 
                  color="red2", offset=.8)


ggtree(tree) + 
  geom_tiplab() + 
  geom_cladelabel(node=17, label="Some random clade", 
                  color="red2", offset=.8) + 
  geom_cladelabel(node=21, label="A different clade", 
                  color="blue", offset=.8)




ggtree(tree) + 
  geom_tiplab() + 
  geom_cladelabel(node=17, label="Some random clade", 
                  color="red2", offset=.8, align=TRUE) + 
  geom_cladelabel(node=21, label="A different clade", 
                  color="blue", offset=.8, align=TRUE) + 
  theme_tree2() + 
  xlim(0, 70) + 
  theme_tree()


ggtree(tree) + 
  geom_tiplab() + 
  geom_hilight(node=17, fill="gold") + 
  geom_hilight(node=21, fill="purple")




ggtree(tree) + 
  geom_tiplab() + 
  geom_taxalink("E", "H", color="blue3") +
  geom_taxalink("C", "G", color="orange2", curvature=-.9)
