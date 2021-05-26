#include <string>
#include <cstdlib>
#include <iostream>
#include "book.hpp"

void quickSort(Book bookArray[], int lo, int hi);
int partition(Book bookArray[], int lo, int hi);

int main()
{
	Book bookArray[10];
	std::cout << "[";
	for(int i = 10; i > 0; i--)
	{
		bookArray[i-1].SetBookID(i);
		if(i == 1)
		{
			std::cout << bookArray[i-1].GetBookID() << "]" << std::endl;
		}
		else
		{
			std::cout << bookArray[i-1].GetBookID() << " ";
		}
	}
	quickSort(bookArray, 0, 9);
	std::cout << "[";
	for(int i = 0; i < 10; i++)
	{
		if(i == 9)
		{
			std::cout << bookArray[i].GetBookID() << "]" << std::endl;
		}
		else
		{
			std::cout << bookArray[i].GetBookID() << " ";
		}
	}
	return 0;
}	

void quickSort(Book bookArray[], int lo, int hi)
{
	if(lo < hi)
	{
		int p = partition(bookArray, lo, hi);
		quickSort(bookArray, lo, p - 1);
		quickSort(bookArray, p + 1, hi);
	}
}

int partition(Book bookArray[], int lo, int hi)
{
	Book pivot = bookArray[hi];
	Book temp;
	int i = lo;
	for(int j = lo; j < hi; j++)
	{
		if(bookArray[j].GetBookID() < pivot.GetBookID())
		{
			temp = bookArray[i];
			bookArray[i] = bookArray[j];
			bookArray[j] = temp;
			i++;
		}
	}
	temp = bookArray[i];
	bookArray[i] = bookArray[hi];
	bookArray[hi] = temp;
	return i;
}