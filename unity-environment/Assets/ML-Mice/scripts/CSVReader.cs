/*
	CSVReader by Dock. (24/8/11)
	http://starfruitgames.com
 
	usage: 
	CSVReader.SplitCsvGrid(textString)
 
	returns a 2D string array. 
 
	Drag onto a gameobject for a demo of CSV parsing.
*/
 
using UnityEngine;
using System.Collections;
using System.Linq;
using System.Globalization;

public class CSVReader
{
	public TextAsset csvFile; 
	static public StepInfo[] GetStepInfos(string CSVcontent)
	{
		string[,] grid = SplitCsvGrid(CSVcontent);
        return FillStepArray(grid);
    }
 
	// outputs the content of a 2D array, useful for checking the importer
	static StepInfo[] FillStepArray(string[,] grid)
	{
        StepInfo[] returnArray = new StepInfo[grid.GetUpperBound(1) - 2]; 
		for (int y = 1; y < grid.GetUpperBound(1)-1; y++) 
		{
            StepInfo step = new StepInfo();
            Debug.Log(grid[1, y]);
            Debug.Log(grid[2, y]);
            step.step = int.Parse(grid[1, y]);
            step.reward = float.Parse(grid[2, y], CultureInfo.InvariantCulture);
            returnArray[y - 1] = step;
        }

        return returnArray;
    }
 
	// splits a CSV file into a 2D string array
	static string[,] SplitCsvGrid(string csvText)
	{
		string[] lines = csvText.Split("\n"[0]); 
 
		// finds the max width of row
		int width = 0; 
		for (int i = 0; i < lines.Length; i++)
		{
			string[] row = SplitCsvLine( lines[i] ); 
			width = Mathf.Max(width, row.Length); 
		}
 
		// creates new 2D string grid to output to
		string[,] outputGrid = new string[width + 1, lines.Length + 1]; 
		for (int y = 0; y < lines.Length; y++)
		{
			string[] row = SplitCsvLine( lines[y] ); 
			for (int x = 0; x < row.Length; x++) 
			{
				outputGrid[x,y] = row[x]; 
 
				// This line was to replace "" with " in my output. 
				// Include or edit it as you wish.
				outputGrid[x,y] = outputGrid[x,y].Replace("\"\"", "\"");
			}
		}
 
		return outputGrid; 
	}
 
	// splits a CSV row 
	static string[] SplitCsvLine(string line)
	{
		return (from System.Text.RegularExpressions.Match m in System.Text.RegularExpressions.Regex.Matches(line,
		@"(((?<x>(?=[,\r\n]+))|""(?<x>([^""]|"""")+)""|(?<x>[^,\r\n]+)),?)", 
		System.Text.RegularExpressions.RegexOptions.ExplicitCapture)
		select m.Groups[1].Value).ToArray();
	}
}