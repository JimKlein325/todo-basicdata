using Xunit;
using System.Collections.Generic;
using System;
using System.Data;
using System.Data.SqlClient;

namespace ToDoList
{
  public class ToDoTest : IDisposable
  {
    public ToDoTest()
    {
      DBConfiguration.ConnectionString = "Data Source=(localdb)\\mssqllocaldb;Initial Catalog=todo_test;Integrated Security=SSPI;";
    }

    [Fact]
    public void Test_DatabaseEmptyAtFirst()
    {
       //Arrange, Act
       int result = Task.GetAll().Count;

       //Assert
       Assert.Equal(0, result);
     }
    [Fact]
    public void Test_Equal_ReturnTrueIfDescriptionsAreTheSame()
    {
       //Arrange, Act
       Task firstTask = new Task("Mow the Lawn");
       Task secondTask = new Task("Mow the Lawn");

       //Assert
       Assert.Equal(firstTask, secondTask);
     }

    public void Dispose()
    {
      Task.DeleteAll();
    }

  }
}
