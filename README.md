#Blog App README

Welcome to the Blog App! This application provides a platform for creating, reading, updating, and deleting blog posts

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Installation](#installation)


## Introduction

The Blog App is a web application built to streamline the process of managing blog posts. With a user-friendly interface, users can easily create, read, update, and delete their blog posts. The authentication system ensures that only authorized users can perform these actions.

## Features

* CRUD Operations: Create, read, update, and delete blog posts effortlessly.

* User Authentication: Secure user accounts with authentication to safeguard personal data.

* Intuitive UI: An easy-to-use interface for efficient blog management.
* Category Count: The number of Articles inside each category is displayed next to the category name.

## Installation

To run the Blog App locally, follow these steps:

Before installing anything, follow the [ruby guides](https://guides.rubyonrails.org/getting_started.html#mvc-and-you) to help you create your own blog app. Once you've finished the guide and created a model for categories then you can follow along with this instructions!

Step 1: Add a column to categories database with this command in the terminal
```bash
 $ bin/rails generate migration AddDescriptionToCategories description:string
```
Step 2: Backfill existing categories with description.

Perform this task  to ensure all categories have descriptions.

To run the Rake task, use the following command in the terminal inside your blog directory:

```bash
rake db:add_descriptions
```