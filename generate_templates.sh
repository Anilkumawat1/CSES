#!/bin/bash

BASE="/Users/anilkumawat/Desktop/CSES-2026/src"

generate() {
  local dir="$1"
  local num="$2"
  local class="$3"
  local padded=$(printf "%02d" "$num")
  local file="$dir/${padded}_${class}.java"
  mkdir -p "$dir"
  cat > "$file" << JAVAEOF
import java.io.*;
import java.util.*;

class $class {

    static final long MOD = 1_000_000_007L;
    static final int[] dx = {-1, 1, 0, 0};
    static final int[] dy = {0, 0, -1, 1};

    static long gcd(long a, long b) {
        return b == 0 ? a : gcd(b, a % b);
    }

    static long power(long base, long exp, long mod) {
        long result = 1;
        base %= mod;
        while (exp > 0) {
            if ((exp & 1) == 1) result = result * base % mod;
            base = base * base % mod;
            exp >>= 1;
        }
        return result;
    }

    static BufferedReader br;
    static PrintWriter out;
    static StringTokenizer st;
    static StringBuilder sb = new StringBuilder();

    // ── I/O helpers ──────────────────────────────────────────────
    static String nextToken() throws IOException {
        while (st == null || !st.hasMoreTokens())
            st = new StringTokenizer(br.readLine());
        return st.nextToken();
    }
    static int    nextInt()  throws IOException { return Integer.parseInt(nextToken()); }
    static long   nextLong() throws IOException { return Long.parseLong(nextToken()); }
    static String nextStr()  throws IOException { return nextToken(); }
    static double nextDouble() throws IOException { return Double.parseDouble(nextToken()); }

    // ── Print helpers ─────────────────────────────────────────────
    /** Print value with newline (single answer) */
    static void prl(Object val)          { out.println(val); }

    /** Print value WITHOUT newline */
    static void pr(Object val)           { out.print(val); }

    /** Print two values separated by space */
    static void prl(Object a, Object b)  { out.println(a + " " + b); }

    /** Print three values separated by space */
    static void prl(Object a, Object b, Object c) { out.println(a + " " + b + " " + c); }

    /** Print int array — space-separated on ONE line */
    static void pra(int[] arr) {
        for (int i = 0; i < arr.length; i++) {
            if (i > 0) sb.append(' ');
            sb.append(arr[i]);
        }
        sb.append('\n');
        out.print(sb); sb.setLength(0);
    }

    /** Print long array — space-separated on ONE line */
    static void pra(long[] arr) {
        for (int i = 0; i < arr.length; i++) {
            if (i > 0) sb.append(' ');
            sb.append(arr[i]);
        }
        sb.append('\n');
        out.print(sb); sb.setLength(0);
    }

    /** Print each element of int array on its OWN line */
    static void prla(int[] arr) {
        for (int v : arr) sb.append(v).append('\n');
        out.print(sb); sb.setLength(0);
    }

    /** Print each element of long array on its OWN line */
    static void prla(long[] arr) {
        for (long v : arr) sb.append(v).append('\n');
        out.print(sb); sb.setLength(0);
    }

    /** Print a 2-D int grid, rows separated by newlines */
    static void prGrid(int[][] g) {
        for (int[] row : g) {
            for (int i = 0; i < row.length; i++) {
                if (i > 0) sb.append(' ');
                sb.append(row[i]);
            }
            sb.append('\n');
        }
        out.print(sb); sb.setLength(0);
    }

    /** Append raw value to buffer — call flush() when done */
    static void buf(Object val)          { sb.append(val).append('\n'); }

    /** Flush the buffer to output in one shot (fastest for big output) */
    static void flush()                  { out.print(sb); sb.setLength(0); out.flush(); }

    // ── Solution ──────────────────────────────────────────────────
    void solve() throws IOException {
        // TODO: implement solution

        // prl(answer);            single answer
        // prl(a, b);              two values on one line
        // pra(arr);               array space-separated on one line
        // prla(arr);              each element on its own line
        // prGrid(grid);           2-D grid
        // buf(x); ... flush();    bulk loop — fastest
    }

    public static void main(String[] args) throws IOException {
        br = new BufferedReader(new InputStreamReader(System.in));
        out = new PrintWriter(new BufferedWriter(new OutputStreamWriter(System.out)));
        new $class().solve();
        out.flush();
    }
}
JAVAEOF
}

# ════════════════════════════════════════════════════════════════
# 01 – Introductory Problems
# ════════════════════════════════════════════════════════════════
D="$BASE/01_IntroductoryProblems"
generate "$D"  1 "WeirdAlgorithm"
generate "$D"  2 "MissingNumber"
generate "$D"  3 "Repetitions"
generate "$D"  4 "IncreasingArray"
generate "$D"  5 "Permutations"
generate "$D"  6 "NumberSpiral"
generate "$D"  7 "TwoKnights"
generate "$D"  8 "TwoSets"
generate "$D"  9 "BitStrings"
generate "$D" 10 "TrailingZeros"
generate "$D" 11 "CoinPiles"
generate "$D" 12 "PalindromeReorder"
generate "$D" 13 "GrayCode"
generate "$D" 14 "TowerOfHanoi"
generate "$D" 15 "CreatingStrings"
generate "$D" 16 "AppleDivision"
generate "$D" 17 "ChessboardAndQueens"
generate "$D" 18 "RaabGameI"
generate "$D" 19 "MexGridConstruction"
generate "$D" 20 "KnightMovesGrid"
generate "$D" 21 "GridColoringI"
generate "$D" 22 "DigitQueries"
generate "$D" 23 "StringReorder"
generate "$D" 24 "GridPathDescription"

# ════════════════════════════════════════════════════════════════
# 02 – Sorting and Searching
# ════════════════════════════════════════════════════════════════
D="$BASE/02_SortingAndSearching"
generate "$D"  1 "DistinctNumbers"
generate "$D"  2 "Apartments"
generate "$D"  3 "FerrisWheel"
generate "$D"  4 "ConcertTickets"
generate "$D"  5 "RestaurantCustomers"
generate "$D"  6 "MovieFestival"
generate "$D"  7 "SumOfTwoValues"
generate "$D"  8 "MaximumSubarraySum"
generate "$D"  9 "StickLengths"
generate "$D" 10 "MissingCoinSum"
generate "$D" 11 "CollectingNumbers"
generate "$D" 12 "CollectingNumbersII"
generate "$D" 13 "Playlist"
generate "$D" 14 "Towers"
generate "$D" 15 "TrafficLights"
generate "$D" 16 "DistinctValuesSubarrays"
generate "$D" 17 "DistinctValuesSubsequences"
generate "$D" 18 "JosephusProblemI"
generate "$D" 19 "JosephusProblemII"
generate "$D" 20 "NestedRangesCheck"
generate "$D" 21 "NestedRangesCount"
generate "$D" 22 "RoomAllocation"
generate "$D" 23 "FactoryMachines"
generate "$D" 24 "TasksAndDeadlines"
generate "$D" 25 "ReadingBooks"
generate "$D" 26 "SumOfThreeValues"
generate "$D" 27 "SumOfFourValues"
generate "$D" 28 "NearestSmallerValues"
generate "$D" 29 "SubarraySumsI"
generate "$D" 30 "SubarraySumsII"
generate "$D" 31 "SubarrayDivisibility"
generate "$D" 32 "DistinctValuesSubarraysII"
generate "$D" 33 "ArrayDivision"
generate "$D" 34 "MovieFestivalII"
generate "$D" 35 "MaximumSubarraySumII"

# ════════════════════════════════════════════════════════════════
# 03 – Dynamic Programming
# ════════════════════════════════════════════════════════════════
D="$BASE/03_DynamicProgramming"
generate "$D"  1 "DiceCombinations"
generate "$D"  2 "MinimizingCoins"
generate "$D"  3 "CoinCombinationsI"
generate "$D"  4 "CoinCombinationsII"
generate "$D"  5 "RemovingDigits"
generate "$D"  6 "GridPathsI"
generate "$D"  7 "BookShop"
generate "$D"  8 "ArrayDescription"
generate "$D"  9 "CountingTowers"
generate "$D" 10 "EditDistance"
generate "$D" 11 "LongestCommonSubsequence"
generate "$D" 12 "RectangleCutting"
generate "$D" 13 "MinimalGridPath"
generate "$D" 14 "MoneySums"
generate "$D" 15 "RemovalGame"
generate "$D" 16 "TwoSetsII"
generate "$D" 17 "MountainRange"
generate "$D" 18 "IncreasingSubsequence"
generate "$D" 19 "Projects"
generate "$D" 20 "ElevatorRides"
generate "$D" 21 "CountingTilings"
generate "$D" 22 "CountingNumbers"
generate "$D" 23 "IncreasingSubsequenceII"

# ════════════════════════════════════════════════════════════════
# 04 – Graph Algorithms
# ════════════════════════════════════════════════════════════════
D="$BASE/04_GraphAlgorithms"
generate "$D"  1 "CountingRooms"
generate "$D"  2 "Labyrinth"
generate "$D"  3 "BuildingRoads"
generate "$D"  4 "MessageRoute"
generate "$D"  5 "BuildingTeams"
generate "$D"  6 "RoundTrip"
generate "$D"  7 "Monsters"
generate "$D"  8 "ShortestRoutesI"
generate "$D"  9 "ShortestRoutesII"
generate "$D" 10 "HighScore"
generate "$D" 11 "FlightDiscount"
generate "$D" 12 "CycleFinding"
generate "$D" 13 "FlightRoutes"
generate "$D" 14 "RoundTripII"
generate "$D" 15 "CourseSchedule"
generate "$D" 16 "LongestFlightRoute"
generate "$D" 17 "GameRoutes"
generate "$D" 18 "Investigation"
generate "$D" 19 "PlanetsQueriesI"
generate "$D" 20 "PlanetsQueriesII"
generate "$D" 21 "PlanetsCycles"
generate "$D" 22 "RoadReparation"
generate "$D" 23 "RoadConstruction"
generate "$D" 24 "FlightRoutesCheck"
generate "$D" 25 "PlanetsAndKingdoms"
generate "$D" 26 "GiantPizza"
generate "$D" 27 "CoinCollector"
generate "$D" 28 "MailDelivery"
generate "$D" 29 "DeBruijnSequence"
generate "$D" 30 "TeleportersPath"
generate "$D" 31 "HamiltonianFlights"
generate "$D" 32 "KnightsTour"
generate "$D" 33 "DownloadSpeed"
generate "$D" 34 "PoliceChase"
generate "$D" 35 "SchoolDance"
generate "$D" 36 "DistinctRoutes"

# ════════════════════════════════════════════════════════════════
# 05 – Range Queries
# ════════════════════════════════════════════════════════════════
D="$BASE/05_RangeQueries"
generate "$D"  1 "StaticRangeSumQueries"
generate "$D"  2 "StaticRangeMinimumQueries"
generate "$D"  3 "DynamicRangeSumQueries"
generate "$D"  4 "DynamicRangeMinimumQueries"
generate "$D"  5 "RangeXorQueries"
generate "$D"  6 "RangeUpdateQueries"
generate "$D"  7 "ForestQueries"
generate "$D"  8 "HotelQueries"
generate "$D"  9 "ListRemovals"
generate "$D" 10 "SalaryQueries"
generate "$D" 11 "PrefixSumQueries"
generate "$D" 12 "PizzeriaQueries"
generate "$D" 13 "VisibleBuildingsQueries"
generate "$D" 14 "RangeIntervalQueries"
generate "$D" 15 "SubarraySumQueries"
generate "$D" 16 "SubarraySumQueriesII"
generate "$D" 17 "DistinctValuesQueries"
generate "$D" 18 "DistinctValuesQueriesII"
generate "$D" 19 "IncreasingArrayQueries"
generate "$D" 20 "MovieFestivalQueries"
generate "$D" 21 "ForestQueriesII"
generate "$D" 22 "RangeUpdatesAndSums"
generate "$D" 23 "PolynomialQueries"
generate "$D" 24 "RangeQueriesAndCopies"
generate "$D" 25 "MissingCoinSumQueries"

# ════════════════════════════════════════════════════════════════
# 06 – Tree Algorithms
# ════════════════════════════════════════════════════════════════
D="$BASE/06_TreeAlgorithms"
generate "$D"  1 "Subordinates"
generate "$D"  2 "TreeMatching"
generate "$D"  3 "TreeDiameter"
generate "$D"  4 "TreeDistancesI"
generate "$D"  5 "TreeDistancesII"
generate "$D"  6 "CompanyQueriesI"
generate "$D"  7 "CompanyQueriesII"
generate "$D"  8 "DistanceQueries"
generate "$D"  9 "CountingPaths"
generate "$D" 10 "SubtreeQueries"
generate "$D" 11 "PathQueries"
generate "$D" 12 "PathQueriesII"
generate "$D" 13 "DistinctColors"
generate "$D" 14 "FindingACentroid"
generate "$D" 15 "FixedLengthPathsI"
generate "$D" 16 "FixedLengthPathsII"

# ════════════════════════════════════════════════════════════════
# 07 – Mathematics
# ════════════════════════════════════════════════════════════════
D="$BASE/07_Mathematics"
generate "$D"  1 "JosephusQueries"
generate "$D"  2 "Exponentiation"
generate "$D"  3 "ExponentiationII"
generate "$D"  4 "CountingDivisors"
generate "$D"  5 "CommonDivisors"
generate "$D"  6 "SumOfDivisors"
generate "$D"  7 "DivisorAnalysis"
generate "$D"  8 "PrimeMultiples"
generate "$D"  9 "CountingCoprimePairs"
generate "$D" 10 "NextPrime"
generate "$D" 11 "BinomialCoefficients"
generate "$D" 12 "CreatingStringsII"
generate "$D" 13 "DistributingApples"
generate "$D" 14 "ChristmasParty"
generate "$D" 15 "PermutationOrder"
generate "$D" 16 "PermutationRounds"
generate "$D" 17 "BracketSequencesI"
generate "$D" 18 "BracketSequencesII"
generate "$D" 19 "CountingNecklaces"
generate "$D" 20 "CountingGrids"
generate "$D" 21 "FibonacciNumbers"
generate "$D" 22 "ThrowingDice"
generate "$D" 23 "GraphPathsI"
generate "$D" 24 "GraphPathsII"
generate "$D" 25 "SystemOfLinearEquations"
generate "$D" 26 "SumOfFourSquares"
generate "$D" 27 "TriangleNumberSums"
generate "$D" 28 "DiceProbability"
generate "$D" 29 "MovingRobots"
generate "$D" 30 "CandyLottery"
generate "$D" 31 "InversionProbability"
generate "$D" 32 "StickGame"
generate "$D" 33 "NimGameI"
generate "$D" 34 "NimGameII"
generate "$D" 35 "StairGame"
generate "$D" 36 "GrundysGame"
generate "$D" 37 "AnotherGame"

# ════════════════════════════════════════════════════════════════
# 08 – String Algorithms
# ════════════════════════════════════════════════════════════════
D="$BASE/08_StringAlgorithms"
generate "$D"  1 "WordCombinations"
generate "$D"  2 "StringMatching"
generate "$D"  3 "FindingBorders"
generate "$D"  4 "FindingPeriods"
generate "$D"  5 "MinimalRotation"
generate "$D"  6 "LongestPalindrome"
generate "$D"  7 "AllPalindromes"
generate "$D"  8 "RequiredSubstring"
generate "$D"  9 "PalindromeQueries"
generate "$D" 10 "FindingPatterns"
generate "$D" 11 "CountingPatterns"
generate "$D" 12 "PatternPositions"
generate "$D" 13 "DistinctSubstrings"
generate "$D" 14 "DistinctSubsequences"
generate "$D" 15 "RepeatingSubstring"
generate "$D" 16 "StringFunctions"
generate "$D" 17 "InverseSuffixArray"
generate "$D" 18 "StringTransform"
generate "$D" 19 "SubstringOrderI"
generate "$D" 20 "SubstringOrderII"
generate "$D" 21 "SubstringDistribution"

# ════════════════════════════════════════════════════════════════
# 09 – Geometry
# ════════════════════════════════════════════════════════════════
D="$BASE/09_Geometry"
generate "$D"  1 "PointLocationTest"
generate "$D"  2 "LineSegmentIntersection"
generate "$D"  3 "PolygonArea"
generate "$D"  4 "PointInPolygon"
generate "$D"  5 "PolygonLatticePoints"
generate "$D"  6 "MinimumEuclideanDistance"
generate "$D"  7 "ConvexHull"
generate "$D"  8 "MaximumManhattanDistances"
generate "$D"  9 "AllManhattanDistances"
generate "$D" 10 "IntersectionPoints"
generate "$D" 11 "LineSegmentsTraceI"
generate "$D" 12 "LineSegmentsTraceII"
generate "$D" 13 "LinesAndQueriesI"
generate "$D" 14 "LinesAndQueriesII"
generate "$D" 15 "AreaOfRectangles"
generate "$D" 16 "RobotPath"

# ════════════════════════════════════════════════════════════════
# 10 – Advanced Techniques
# ════════════════════════════════════════════════════════════════
D="$BASE/10_AdvancedTechniques"
generate "$D"  1 "MeetInTheMiddle"
generate "$D"  2 "HammingDistance"
generate "$D"  3 "CornerSubgridCheck"
generate "$D"  4 "CornerSubgridCount"
generate "$D"  5 "ReachableNodes"
generate "$D"  6 "ReachabilityQueries"
generate "$D"  7 "CutAndPaste"
generate "$D"  8 "SubstringReversals"
generate "$D"  9 "ReversalsAndSums"
generate "$D" 10 "NecessaryRoads"
generate "$D" 11 "NecessaryCities"
generate "$D" 12 "EulerianSubgraphs"
generate "$D" 13 "MonsterGameI"
generate "$D" 14 "MonsterGameII"
generate "$D" 15 "SubarraySquares"
generate "$D" 16 "HousesAndSchools"
generate "$D" 17 "KnuthDivision"
generate "$D" 18 "ApplesAndBananas"
generate "$D" 19 "OneBitPositions"
generate "$D" 20 "SignalProcessing"
generate "$D" 21 "NewRoadsQueries"
generate "$D" 22 "DynamicConnectivity"
generate "$D" 23 "ParcelDelivery"
generate "$D" 24 "TaskAssignment"
generate "$D" 25 "DistinctRoutesII"

# ════════════════════════════════════════════════════════════════
# 11 – Sliding Window Problems
# ════════════════════════════════════════════════════════════════
D="$BASE/11_SlidingWindowProblems"
generate "$D"  1 "SlidingWindowSum"
generate "$D"  2 "SlidingWindowMinimum"
generate "$D"  3 "SlidingWindowXor"
generate "$D"  4 "SlidingWindowOr"
generate "$D"  5 "SlidingWindowDistinctValues"
generate "$D"  6 "SlidingWindowMode"
generate "$D"  7 "SlidingWindowMex"
generate "$D"  8 "SlidingWindowMedian"
generate "$D"  9 "SlidingWindowCost"
generate "$D" 10 "SlidingWindowInversions"
generate "$D" 11 "SlidingWindowAdvertisement"

# ════════════════════════════════════════════════════════════════
# 12 – Interactive Problems
# ════════════════════════════════════════════════════════════════
D="$BASE/12_InteractiveProblems"
generate "$D"  1 "HiddenInteger"
generate "$D"  2 "HiddenPermutation"
generate "$D"  3 "KthHighestScore"
generate "$D"  4 "PermutedBinaryStrings"
generate "$D"  5 "ColoredChairs"
generate "$D"  6 "InversionSorting"

# ════════════════════════════════════════════════════════════════
# 13 – Bitwise Operations
# ════════════════════════════════════════════════════════════════
D="$BASE/13_BitwiseOperations"
generate "$D"  1 "CountingBits"
generate "$D"  2 "MaximumXorSubarray"
generate "$D"  3 "MaximumXorSubset"
generate "$D"  4 "NumberOfSubsetXors"
generate "$D"  5 "KSubsetXors"
generate "$D"  6 "AllSubarrayXors"
generate "$D"  7 "XorPyramidPeak"
generate "$D"  8 "XorPyramidDiagonal"
generate "$D"  9 "XorPyramidRow"
generate "$D" 10 "SOSBitProblem"
generate "$D" 11 "AndSubsetCount"

# ════════════════════════════════════════════════════════════════
# 14 – Construction Problems
# ════════════════════════════════════════════════════════════════
D="$BASE/14_ConstructionProblems"
generate "$D"  1 "InverseInversions"
generate "$D"  2 "MonotoneSubsequences"
generate "$D"  3 "ThirdPermutation"
generate "$D"  4 "PermutationPrimeSums"
generate "$D"  5 "ChessTournament"
generate "$D"  6 "DistinctSumsGrid"
generate "$D"  7 "FillingTrominos"
generate "$D"  8 "GridPathConstruction"

# ════════════════════════════════════════════════════════════════
# 15 – Advanced Graph Problems
# ════════════════════════════════════════════════════════════════
D="$BASE/15_AdvancedGraphProblems"
generate "$D"  1 "NearestShops"
generate "$D"  2 "PruferCode"
generate "$D"  3 "TreeTraversals"
generate "$D"  4 "CourseScheduleII"
generate "$D"  5 "AcyclicGraphEdges"
generate "$D"  6 "StronglyConnectedEdges"
generate "$D"  7 "EvenOutdegreeEdges"
generate "$D"  8 "GraphGirth"
generate "$D"  9 "FixedLengthWalkQueries"
generate "$D" 10 "TransferSpeedsSum"
generate "$D" 11 "MSTEdgeCheck"
generate "$D" 12 "MSTEdgeSetCheck"
generate "$D" 13 "MSTEdgeCost"
generate "$D" 14 "NetworkBreakdown"
generate "$D" 15 "TreeCoinCollectingI"
generate "$D" 16 "TreeCoinCollectingII"
generate "$D" 17 "TreeIsomorphismI"
generate "$D" 18 "TreeIsomorphismII"
generate "$D" 19 "FlightRouteRequests"
generate "$D" 20 "CriticalCities"
generate "$D" 21 "VisitingCities"
generate "$D" 22 "GraphColoring"
generate "$D" 23 "BusCompanies"
generate "$D" 24 "SplitIntoTwoPaths"
generate "$D" 25 "NetworkRenovation"
generate "$D" 26 "ForbiddenCities"
generate "$D" 27 "CreatingOffices"
generate "$D" 28 "NewFlightRoutes"

# ════════════════════════════════════════════════════════════════
# 16 – Counting Problems
# ════════════════════════════════════════════════════════════════
D="$BASE/16_CountingProblems"
generate "$D"  1 "FilledSubgridCountI"
generate "$D"  2 "FilledSubgridCountII"
generate "$D"  3 "AllLetterSubgridCountI"
generate "$D"  4 "AllLetterSubgridCountII"
generate "$D"  5 "BorderSubgridCountI"
generate "$D"  6 "BorderSubgridCountII"
generate "$D"  7 "RaabGameII"
generate "$D"  8 "EmptyString"
generate "$D"  9 "PermutationInversions"
generate "$D" 10 "CountingBishops"
generate "$D" 11 "CountingSequences"
generate "$D" 12 "GridPathsII"
generate "$D" 13 "CountingPermutations"
generate "$D" 14 "GridCompletion"
generate "$D" 15 "CountingReorders"
generate "$D" 16 "TournamentGraphDistribution"
generate "$D" 17 "CollectingNumbersDistribution"
generate "$D" 18 "FunctionalGraphDistribution"

# ════════════════════════════════════════════════════════════════
# 17 – Additional Problems I
# ════════════════════════════════════════════════════════════════
D="$BASE/17_AdditionalProblemsI"
generate "$D"  1 "ShortestSubsequence"
generate "$D"  2 "DistinctValuesSum"
generate "$D"  3 "DistinctValuesSplits"
generate "$D"  4 "SwapGame"
generate "$D"  5 "BeautifulPermutationII"
generate "$D"  6 "MultiplicationTable"
generate "$D"  7 "BubbleSortRoundsI"
generate "$D"  8 "BubbleSortRoundsII"
generate "$D"  9 "NearestCampsitesI"
generate "$D" 10 "NearestCampsitesII"
generate "$D" 11 "Advertisement"
generate "$D" 12 "SpecialSubstrings"
generate "$D" 13 "CountingLCMArrays"
generate "$D" 14 "SquareSubsets"
generate "$D" 15 "SubarraySumConstraints"
generate "$D" 16 "WaterContainersMoves"
generate "$D" 17 "WaterContainersQueries"
generate "$D" 18 "StackWeights"
generate "$D" 19 "MaximumAverageSubarrays"
generate "$D" 20 "SubsetsWithFixedAverage"
generate "$D" 21 "TwoArrayAverage"
generate "$D" 22 "PyramidArray"
generate "$D" 23 "PermutationSubsequence"
generate "$D" 24 "BitInversions"
generate "$D" 25 "WritingNumbers"
generate "$D" 26 "LetterPairMoveGame"
generate "$D" 27 "MaximumBuildingI"
generate "$D" 28 "SortingMethods"
generate "$D" 29 "CyclicArray"
generate "$D" 30 "ListOfSums"

# ════════════════════════════════════════════════════════════════
# 18 – Additional Problems II
# ════════════════════════════════════════════════════════════════
D="$BASE/18_AdditionalProblemsII"
generate "$D"  1 "BouncingBallSteps"
generate "$D"  2 "BouncingBallCycle"
generate "$D"  3 "KnightMovesQueries"
generate "$D"  4 "KSubsetSumsI"
generate "$D"  5 "KSubsetSumsII"
generate "$D"  6 "IncreasingArrayII"
generate "$D"  7 "FoodDivision"
generate "$D"  8 "SwapRoundSorting"
generate "$D"  9 "BinarySubsequences"
generate "$D" 10 "SchoolExcursion"
generate "$D" 11 "CoinGrid"
generate "$D" 12 "GridColoringII"
generate "$D" 13 "ProgrammersAndArtists"
generate "$D" 14 "RemovingDigitsII"
generate "$D" 15 "CoinArrangement"
generate "$D" 16 "ReplaceWithDifference"
generate "$D" 17 "GridPuzzleI"
generate "$D" 18 "GridPuzzleII"
generate "$D" 19 "BitSubstrings"
generate "$D" 20 "ReversalSorting"
generate "$D" 21 "BookShopII"
generate "$D" 22 "GCDSubsets"
generate "$D" 23 "MinimumCostPairs"
generate "$D" 24 "SameSumSubsets"
generate "$D" 25 "MexGridQueries"
generate "$D" 26 "MaximumBuildingII"
generate "$D" 27 "StickDivisions"
generate "$D" 28 "StickDifference"
generate "$D" 29 "CodingCompany"
generate "$D" 30 "TwoStacksSorting"

# ────────────────────────────────────────────────────────────────
echo ""
echo "✅ All CSES Java templates generated with CSES ordering!"
echo "📁 Location: $BASE"
echo ""
echo "📂 Folders:"
ls "$BASE" | nl
echo ""
echo "📊 File counts per category:"
for dir in "$BASE"/*/; do
  count=$(find "$dir" -maxdepth 1 -name "*.java" | wc -l | tr -d ' ')
  printf "   %-40s %s files\n" "$(basename "$dir")" "$count"
done
echo ""
find "$BASE" -name "*.java" | wc -l | xargs echo "📊 TOTAL:"
