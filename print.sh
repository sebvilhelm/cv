#!/bin/bash

pandoc src/cv.md --css src/print.css -o CV.pdf --pdf-engine weasyprint --metadata pagetitle="Sebastian Vilhelm Juhl CV"

open CV.pdf
