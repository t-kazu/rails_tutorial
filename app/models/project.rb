# coding: utf-8
class Project < ApplicationRecord
  has_many :tasks
  validates :title,
  presence: { message: "入力して下さい"},
  length: {minimum: 3, maximum: 10,message: "文字数は3~10文字です"}
end
