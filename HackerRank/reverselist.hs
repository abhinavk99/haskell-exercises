-- https://www.hackerrank.com/challenges/fp-reverse-a-list/problem

rev l = (last l):(rev (init l))