#!/usr/bin/python3

def print_matrix_integer(matrix=[[]]):
    for row in matrix:
        for i in range(len(row)):
            # use str.format() to print integer in the required format
            # by specifying the field width as 2 and aligning the text to the right
            print("{:2d}".format(row[i]), end=' ')
        print()  # print newline after each row

