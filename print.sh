#!/bin/bash

pandoc src/cv.md --css src/print.css -o dist/CV.pdf --pdf-engine weasyprint --metadata pagetitle="Sebastian Vilhelm Nielsen CV"

open dist/CV.pdf