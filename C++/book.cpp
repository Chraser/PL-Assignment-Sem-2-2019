#include <string>
#include "book.hpp"


Book::Book()
{
	this->bookID = 1;
	this->bookName = "Book";
	this->ISBN = "ISBN";
}

int Book::GetBookID()
{
	return bookID;
}

std::string Book::GetBookName()
{
	return bookName;
}

std::string Book::GetISBN()
{
	return ISBN;
}

void Book::SetBookID(int bookID)
{
	this->bookID = bookID;
}

void Book::SetBookName(std::string bookName)
{
	this->bookName = bookName;
}


void Book::SetBookISBN(std::string ISBN)
{
	this->ISBN = ISBN;
}

Book::~Book()
{
}