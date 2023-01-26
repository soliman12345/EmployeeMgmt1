﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace EmployeeMgmt1
{
    internal class Functions
    {
        ConStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\ENG-Mohamed Hassan\Documents\EmpDb.mdf"";Integrated Security=True;Connect Timeout=30";
            Con = new SqlConnection(ConStr);
        Cmd = new SqlCommand();
        Cmd.Connection = Con;
        }
    public DataTable GetData(string Query)
    {
        dt = new DataTable();
        sda = new SqlDataAdapter(Query, ConStr);
        sda.Fill(dt);
        return dt;
    }
    public int SetData(String Query)
    {
        int cnt = 0;
        if (Con.State == ConnectionState.Closed)
        {
            Con.Open();
        }
        Cmd.CommandText = Query;
        cnt = Cmd.ExecuteNonQuery();
        return cnt;
    }
