BeforeAll {
    Import-Module -Name ./ICT_128_LAB_5.psm1
}
Describe 'Check-Q1' {
    It 'Basic Test' {
        $processes = Get-Process
        foreach ($process in (Q1 $processes)) {
            $process.HandleCount % 2 | Should -Be 0
        }
    }
}

Describe 'Check-Q2' {
    It 'Basic Test' {
        $users = Q2
        foreach ($user in $users) {
            $user.FirstName | Should -not -BeNullOrEmpty
            $user.LastName | Should -not -BeNullOrEmpty
            $user.Surname | Should -not -BeNullOrEmpty
            $user.Account | Should -not -BeNullOrEmpty
            $user.CompanyName | Should -not -BeNullOrEmpty
            $user.Title | Should -not -BeNullOrEmpty
        }
    }
}

Describe 'Check-Q4' {
    It 'Basic Test' {
        $result = Q4 -a 4 -b 2
        $result | Should -Be 2
    }

    It 'Single Test' {
        $result = Q4 -a 4
        $result | Should -Be 4
    }

    It 'Assert Mandatory' {
        (Get-Command "Q4").Parameters["a"].Attributes.Mandatory | Should -Be $true
    }
}

Describe 'Check-Q5' {
    It 'Single Test' {
        $result = Q5 -MyCoolName "Name"
        $result | Should -Be "Name"
    }

    It 'Alias Test' {
        $result = Q5 -n "Name"
        $result | Should -Be "Name"
    }

    It 'Assert Alias' {
        (Get-Command "Q5").Parameters["MyCoolName"].Aliases | Should -Be "n"
    }
}

Describe 'Check-Q6' {
    It 'Basic Test' {
        $result = Q6 -hours 1 -minutes 1
        $result | Should -Be "1:1"
    }

    It 'Basic Test Top' {
        $result = Q6 -hours 23 -minutes 59
        $result | Should -Be "23:59"
    }

    It 'Bad Test 1' {
        { Q6 -hours 25 -minutes 10 } | Should -Throw
    }

    It 'Bad Test 2' {
        { Q6 -hours -1 -minutes 10 } | Should -Throw
    }

    It 'Bad Test 3' {
        { Q6 -hours 1 -minutes 60 } | Should -Throw
    }

    It 'Bad Test 4' {
        { Q6 -hours 1 -minutes -1 } | Should -Throw
    }
}