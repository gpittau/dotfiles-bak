<?php
require_once 'Image/GraphViz.php';

$gv = new Image_GraphViz();
$gv->addEdge(array('wake up'        => 'visit bathroom'));
$gv->addEdge(array('visit bathroom' => 'make coffee'));
$gv->image();
?>

