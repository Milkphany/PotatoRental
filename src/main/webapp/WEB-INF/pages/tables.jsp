<div id="code">
    <p>
        <strong>Account</strong><br/>

    <table id ="orderhistory" class="codetab">
        <tr>
            <td bgcolor=silver class='medium'>Field</td>
            <td bgcolor=silver class='medium'>Type</td>
            <td bgcolor=silver class='medium'>Null</td>
            <td bgcolor=silver class='medium'>Key</td>
            <td bgcolor=silver class='medium'>Default</td>
            <td bgcolor=silver class='medium'>Extra</td>
        </tr>

        <tr>
            <td class='normal' valign='top'>id</td>
            <td class='normal' valign='top'>int(11)</td>
            <td class='normal' valign='top'>NO</td>
            <td class='normal' valign='top'>PRI</td>
            <td class='normal' valign='top'>NULL</td>
            <td class='normal' valign='top'>auto_increment</td>
        </tr>

        <tr>
            <td class='normal' valign='top'>dateopened</td>
            <td class='normal' valign='top'>date</td>
            <td class='normal' valign='top'>YES</td>
            <td class='normal' valign='top'></td>
            <td class='normal' valign='top'>NULL</td>
            <td class='normal' valign='top'></td>
        </tr>

        <tr>
            <td class='normal' valign='top'>type</td>
            <td class='normal' valign='top'>enum(&#39;lim&#39;,&#39;one&#39;,&#39;two&#39;,&#39;three&#39;)</td>
            <td class='normal' valign='top'>YES</td>
            <td class='normal' valign='top'></td>
            <td class='normal' valign='top'>NULL</td>
            <td class='normal' valign='top'></td>
        </tr>

        <tr>
            <td class='normal' valign='top'>customer</td>
            <td class='normal' valign='top'>int(11)</td>
            <td class='normal' valign='top'>YES</td>
            <td class='normal' valign='top'>MUL</td>
            <td class='normal' valign='top'>NULL</td>
            <td class='normal' valign='top'></td>
        </tr>
    </table>
    <br/>Sample data:
    <table border=1>
        <tr>
            <td bgcolor=silver class='medium'>id</td>
            <td bgcolor=silver class='medium'>dateopened</td>
            <td bgcolor=silver class='medium'>type</td>
            <td bgcolor=silver class='medium'>customer</td>
        </tr>

        <tr>
            <td class='normal' valign='top'>1</td>
            <td class='normal' valign='top'>2010-01-06</td>
            <td class='normal' valign='top'>two</td>
            <td class='normal' valign='top'>444444444</td>
        </tr>

        <tr>
            <td class='normal' valign='top'>2</td>
            <td class='normal' valign='top'>2006-10-15</td>
            <td class='normal' valign='top'>lim</td>
            <td class='normal' valign='top'>222222222</td>
        </tr>

        <tr>
            <td class='normal' valign='top'>3</td>
            <td class='normal' valign='top'>2010-02-02</td>
            <td class='normal' valign='top'>two</td>
            <td class='normal' valign='top'>111111111</td>
        </tr>
    </table>
</p>

<p>
    <strong>Actor</strong>

<table id="orderhistory" class="codetab">
    <tr>
        <td bgcolor=silver class='medium'>Field</td>
        <td bgcolor=silver class='medium'>Type</td>
        <td bgcolor=silver class='medium'>Null</td>
        <td bgcolor=silver class='medium'>Key</td>
        <td bgcolor=silver class='medium'>Default</td>
        <td bgcolor=silver class='medium'>Extra</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>id</td>
        <td class='normal' valign='top'>int(11)</td>
        <td class='normal' valign='top'>NO</td>
        <td class='normal' valign='top'>PRI</td>
        <td class='normal' valign='top'>NULL</td>
        <td class='normal' valign='top'>auto_increment</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>name</td>
        <td class='normal' valign='top'>varchar(128)</td>
        <td class='normal' valign='top'>YES</td>
        <td class='normal' valign='top'></td>
        <td class='normal' valign='top'>NULL</td>
        <td class='normal' valign='top'></td>
    </tr>

    <tr>
        <td class='normal' valign='top'>age</td>
        <td class='normal' valign='top'>int(11)</td>
        <td class='normal' valign='top'>NO</td>
        <td class='normal' valign='top'></td>
        <td class='normal' valign='top'>NULL</td>
        <td class='normal' valign='top'></td>
    </tr>

    <tr>
        <td class='normal' valign='top'>mf</td>
        <td class='normal' valign='top'>char(1)</td>
        <td class='normal' valign='top'>NO</td>
        <td class='normal' valign='top'></td>
        <td class='normal' valign='top'>NULL</td>
        <td class='normal' valign='top'></td>
    </tr>

    <tr>
        <td class='normal' valign='top'>rating</td>
        <td class='normal' valign='top'>int(11)</td>
        <td class='normal' valign='top'>YES</td>
        <td class='normal' valign='top'></td>
        <td class='normal' valign='top'>NULL</td>
        <td class='normal' valign='top'></td>
    </tr>
</table>
<br/>Sample data:
<table border=1>
    <tr>
        <td bgcolor=silver class='medium'>id</td>
        <td bgcolor=silver class='medium'>name</td>
        <td bgcolor=silver class='medium'>age</td>
        <td bgcolor=silver class='medium'>mf</td>
        <td bgcolor=silver class='medium'>rating</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>1</td>
        <td class='normal' valign='top'>Al Pacino</td>
        <td class='normal' valign='top'>63</td>
        <td class='normal' valign='top'>M</td>
        <td class='normal' valign='top'>5</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>2</td>
        <td class='normal' valign='top'>Tim Robbins</td>
        <td class='normal' valign='top'>53</td>
        <td class='normal' valign='top'>M</td>
        <td class='normal' valign='top'>2</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>3</td>
        <td class='normal' valign='top'>Morgan Freeman</td>
        <td class='normal' valign='top'>76</td>
        <td class='normal' valign='top'>M</td>
        <td class='normal' valign='top'>5</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>4</td>
        <td class='normal' valign='top'>Bob Gunton</td>
        <td class='normal' valign='top'>67</td>
        <td class='normal' valign='top'>M</td>
        <td class='normal' valign='top'>5</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>5</td>
        <td class='normal' valign='top'>William Sadler</td>
        <td class='normal' valign='top'>63</td>
        <td class='normal' valign='top'>M</td>
        <td class='normal' valign='top'>5</td>
    </tr>


</table>

</p>

<p><strong>AppearedIn</strong><br>
<table border=1>
    <tr>
        <td bgcolor=silver class='medium'>Field</td>
        <td bgcolor=silver class='medium'>Type</td>
        <td bgcolor=silver class='medium'>Null</td>
        <td bgcolor=silver class='medium'>Key</td>
        <td bgcolor=silver class='medium'>Default</td>
        <td bgcolor=silver class='medium'>Extra</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>actorid</td>
        <td class='normal' valign='top'>int(11)</td>
        <td class='normal' valign='top'>NO</td>
        <td class='normal' valign='top'>PRI</td>
        <td class='normal' valign='top'>0</td>
        <td class='normal' valign='top'></td>
    </tr>

    <tr>
        <td class='normal' valign='top'>movieid</td>
        <td class='normal' valign='top'>int(11)</td>
        <td class='normal' valign='top'>NO</td>
        <td class='normal' valign='top'>PRI</td>
        <td class='normal' valign='top'>0</td>
        <td class='normal' valign='top'></td>
    </tr>
</table>
<br/>Sample data:
<table border=1>
    <tr>
        <td bgcolor=silver class='medium'>actorid</td>
        <td bgcolor=silver class='medium'>movieid</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>1</td>
        <td class='normal' valign='top'>1</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>2</td>
        <td class='normal' valign='top'>1</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>7</td>
        <td class='normal' valign='top'>1</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>8</td>
        <td class='normal' valign='top'>1</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>9</td>
        <td class='normal' valign='top'>1</td>
    </tr>
</table>
</p>


<p><strong>Customer</strong><br/>
<table border=1>
    <tr>
        <td bgcolor=silver class='medium'>Field</td>
        <td bgcolor=silver class='medium'>Type</td>
        <td bgcolor=silver class='medium'>Null</td>
        <td bgcolor=silver class='medium'>Key</td>
        <td bgcolor=silver class='medium'>Default</td>
        <td bgcolor=silver class='medium'>Extra</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>id</td>
        <td class='normal' valign='top'>int(11)</td>
        <td class='normal' valign='top'>NO</td>
        <td class='normal' valign='top'>PRI</td>
        <td class='normal' valign='top'>0</td>
        <td class='normal' valign='top'></td>
    </tr>

    <tr>
        <td class='normal' valign='top'>rating</td>
        <td class='normal' valign='top'>int(11)</td>
        <td class='normal' valign='top'>YES</td>
        <td class='normal' valign='top'></td>
        <td class='normal' valign='top'>NULL</td>
        <td class='normal' valign='top'></td>
    </tr>
</table>
<br/>Sample data:
<table border=1>
    <tr>
        <td bgcolor=silver class='medium'>id</td>
        <td bgcolor=silver class='medium'>rating</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>111111111</td>
        <td class='normal' valign='top'>1</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>114523222</td>
        <td class='normal' valign='top'>2</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>222222222</td>
        <td class='normal' valign='top'>2</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>333333333</td>
        <td class='normal' valign='top'>1</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>444444444</td>
        <td class='normal' valign='top'>1</td>
    </tr>
</table>
</p>


<p><strong>Employee</strong><br/>
<table border=1>
    <tr>
        <td bgcolor=silver class='medium'>Field</td>
        <td bgcolor=silver class='medium'>Type</td>
        <td bgcolor=silver class='medium'>Null</td>
        <td bgcolor=silver class='medium'>Key</td>
        <td bgcolor=silver class='medium'>Default</td>
        <td bgcolor=silver class='medium'>Extra</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>id</td>
        <td class='normal' valign='top'>int(11)</td>
        <td class='normal' valign='top'>NO</td>
        <td class='normal' valign='top'>PRI</td>
        <td class='normal' valign='top'>NULL</td>
        <td class='normal' valign='top'>auto_increment</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>ssn</td>
        <td class='normal' valign='top'>int(11)</td>
        <td class='normal' valign='top'>YES</td>
        <td class='normal' valign='top'>MUL</td>
        <td class='normal' valign='top'>NULL</td>
        <td class='normal' valign='top'></td>
    </tr>

    <tr>
        <td class='normal' valign='top'>startdate</td>
        <td class='normal' valign='top'>date</td>
        <td class='normal' valign='top'>YES</td>
        <td class='normal' valign='top'></td>
        <td class='normal' valign='top'>NULL</td>
        <td class='normal' valign='top'></td>
    </tr>

    <tr>
        <td class='normal' valign='top'>hourlyrate</td>
        <td class='normal' valign='top'>int(11)</td>
        <td class='normal' valign='top'>YES</td>
        <td class='normal' valign='top'></td>
        <td class='normal' valign='top'>NULL</td>
        <td class='normal' valign='top'></td>
    </tr>

    <tr>
        <td class='normal' valign='top'>manager</td>
        <td class='normal' valign='top'>tinyint(1)</td>
        <td class='normal' valign='top'>NO</td>
        <td class='normal' valign='top'></td>
        <td class='normal' valign='top'>NULL</td>
        <td class='normal' valign='top'></td>
    </tr>
</table>
<br/>Sample data:

<table border=1>
    <tr>
        <td bgcolor=silver class='medium'>id</td>
        <td bgcolor=silver class='medium'>ssn</td>
        <td bgcolor=silver class='medium'>startdate</td>
        <td bgcolor=silver class='medium'>hourlyrate</td>
        <td bgcolor=silver class='medium'>manager</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>1</td>
        <td class='normal' valign='top'>123456789</td>
        <td class='normal' valign='top'>2005-11-01</td>
        <td class='normal' valign='top'>60</td>
        <td class='normal' valign='top'>1</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>2</td>
        <td class='normal' valign='top'>789123456</td>
        <td class='normal' valign='top'>2006-02-02</td>
        <td class='normal' valign='top'>50</td>
        <td class='normal' valign='top'>0</td>
    </tr>
</table>
</p>

<p><strong>Location</strong><br/>
<table border=1>
    <tr>
        <td bgcolor=silver class='medium'>Field</td>
        <td bgcolor=silver class='medium'>Type</td>
        <td bgcolor=silver class='medium'>Null</td>
        <td bgcolor=silver class='medium'>Key</td>
        <td bgcolor=silver class='medium'>Default</td>
        <td bgcolor=silver class='medium'>Extra</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>zipcode</td>
        <td class='normal' valign='top'>int(11)</td>
        <td class='normal' valign='top'>NO</td>
        <td class='normal' valign='top'>PRI</td>
        <td class='normal' valign='top'>0</td>
        <td class='normal' valign='top'></td>
    </tr>

    <tr>
        <td class='normal' valign='top'>city</td>
        <td class='normal' valign='top'>varchar(20)</td>
        <td class='normal' valign='top'>NO</td>
        <td class='normal' valign='top'></td>
        <td class='normal' valign='top'>NULL</td>
        <td class='normal' valign='top'></td>
    </tr>

    <tr>
        <td class='normal' valign='top'>state</td>
        <td class='normal' valign='top'>varchar(20)</td>
        <td class='normal' valign='top'>NO</td>
        <td class='normal' valign='top'></td>
        <td class='normal' valign='top'>NULL</td>
        <td class='normal' valign='top'></td>
    </tr>
</table>
<br/>Sample data:
<table border=1>
    <tr>
        <td bgcolor=silver class='medium'>zipcode</td>
        <td bgcolor=silver class='medium'>city</td>
        <td bgcolor=silver class='medium'>state</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>11373</td>
        <td class='normal' valign='top'>Elmhurst</td>
        <td class='normal' valign='top'>NY</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>11592</td>
        <td class='normal' valign='top'>Dema</td>
        <td class='normal' valign='top'>NJ</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>11790</td>
        <td class='normal' valign='top'>Stony Brook</td>
        <td class='normal' valign='top'>NY</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>11794</td>
        <td class='normal' valign='top'>Stony Brook</td>
        <td class='normal' valign='top'>NY</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>12322</td>
        <td class='normal' valign='top'>Jersey City</td>
        <td class='normal' valign='top'>NJ</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>93536</td>
        <td class='normal' valign='top'>Los Angeles</td>
        <td class='normal' valign='top'>CA</td>
    </tr>
</table>
</p>

<p><strong>Movie</strong><br/>
<table border=1>
    <tr>
        <td bgcolor=silver class='medium'>Field</td>
        <td bgcolor=silver class='medium'>Type</td>
        <td bgcolor=silver class='medium'>Null</td>
        <td bgcolor=silver class='medium'>Key</td>
        <td bgcolor=silver class='medium'>Default</td>
        <td bgcolor=silver class='medium'>Extra</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>id</td>
        <td class='normal' valign='top'>int(11)</td>
        <td class='normal' valign='top'>NO</td>
        <td class='normal' valign='top'>PRI</td>
        <td class='normal' valign='top'>NULL</td>
        <td class='normal' valign='top'>auto_increment</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>name</td>
        <td class='normal' valign='top'>varchar(128)</td>
        <td class='normal' valign='top'>YES</td>
        <td class='normal' valign='top'></td>
        <td class='normal' valign='top'>NULL</td>
        <td class='normal' valign='top'></td>
    </tr>

    <tr>
        <td class='normal' valign='top'>type</td>
        <td class='normal' valign='top'>varchar(20)</td>
        <td class='normal' valign='top'>NO</td>
        <td class='normal' valign='top'></td>
        <td class='normal' valign='top'>NULL</td>
        <td class='normal' valign='top'></td>
    </tr>

    <tr>
        <td class='normal' valign='top'>rating</td>
        <td class='normal' valign='top'>int(11)</td>
        <td class='normal' valign='top'>YES</td>
        <td class='normal' valign='top'></td>
        <td class='normal' valign='top'>NULL</td>
        <td class='normal' valign='top'></td>
    </tr>

    <tr>
        <td class='normal' valign='top'>distrfee</td>
        <td class='normal' valign='top'>float</td>
        <td class='normal' valign='top'>YES</td>
        <td class='normal' valign='top'></td>
        <td class='normal' valign='top'>NULL</td>
        <td class='normal' valign='top'></td>
    </tr>

    <tr>
        <td class='normal' valign='top'>numcopies</td>
        <td class='normal' valign='top'>int(11)</td>
        <td class='normal' valign='top'>YES</td>
        <td class='normal' valign='top'></td>
        <td class='normal' valign='top'>NULL</td>
        <td class='normal' valign='top'></td>
    </tr>
</table>
<br/>Sample data:
<table border=1>
    <tr>
        <td bgcolor=silver class='medium'>id</td>
        <td bgcolor=silver class='medium'>name</td>
        <td bgcolor=silver class='medium'>type</td>
        <td bgcolor=silver class='medium'>rating</td>
        <td bgcolor=silver class='medium'>distrfee</td>
        <td bgcolor=silver class='medium'>numcopies</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>1</td>
        <td class='normal' valign='top'>The Godfather</td>
        <td class='normal' valign='top'>Drama</td>
        <td class='normal' valign='top'>5</td>
        <td class='normal' valign='top'>10000</td>
        <td class='normal' valign='top'>3</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>2</td>
        <td class='normal' valign='top'>The Shawshank Redemption</td>
        <td class='normal' valign='top'>Drama</td>
        <td class='normal' valign='top'>4</td>
        <td class='normal' valign='top'>1000</td>
        <td class='normal' valign='top'>2</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>3</td>
        <td class='normal' valign='top'>Borat</td>
        <td class='normal' valign='top'>Comedy</td>
        <td class='normal' valign='top'>3</td>
        <td class='normal' valign='top'>500</td>
        <td class='normal' valign='top'>1</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>6</td>
        <td class='normal' valign='top'>The Godfather: Part II</td>
        <td class='normal' valign='top'>Crime</td>
        <td class='normal' valign='top'>5</td>
        <td class='normal' valign='top'>4883.78</td>
        <td class='normal' valign='top'>7</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>7</td>
        <td class='normal' valign='top'>Pulp Fiction</td>
        <td class='normal' valign='top'>Crime</td>
        <td class='normal' valign='top'>5</td>
        <td class='normal' valign='top'>6573.96</td>
        <td class='normal' valign='top'>19</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>8</td>
        <td class='normal' valign='top'>The Good, the Bad and the Ugly</td>
        <td class='normal' valign='top'>Adventure</td>
        <td class='normal' valign='top'>4</td>
        <td class='normal' valign='top'>7719.61</td>
        <td class='normal' valign='top'>14</td>
    </tr></table>
</p>

<p><strong>MovieQ</strong><br/>
<table border=1>
    <tr>
        <td bgcolor=silver class='medium'>Field</td>
        <td bgcolor=silver class='medium'>Type</td>
        <td bgcolor=silver class='medium'>Null</td>
        <td bgcolor=silver class='medium'>Key</td>
        <td bgcolor=silver class='medium'>Default</td>
        <td bgcolor=silver class='medium'>Extra</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>accountid</td>
        <td class='normal' valign='top'>int(11)</td>
        <td class='normal' valign='top'>NO</td>
        <td class='normal' valign='top'>PRI</td>
        <td class='normal' valign='top'>0</td>
        <td class='normal' valign='top'></td>
    </tr>

    <tr>
        <td class='normal' valign='top'>movieid</td>
        <td class='normal' valign='top'>int(11)</td>
        <td class='normal' valign='top'>NO</td>
        <td class='normal' valign='top'>PRI</td>
        <td class='normal' valign='top'>0</td>
        <td class='normal' valign='top'></td>
    </tr>
</table>
<br/>Sample data:
<table border=1>
    <tr>
        <td bgcolor=silver class='medium'>accountid</td>
        <td bgcolor=silver class='medium'>movieid</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>1</td>
        <td class='normal' valign='top'>1</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>3</td>
        <td class='normal' valign='top'>1</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>2</td>
        <td class='normal' valign='top'>2</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>3</td>
        <td class='normal' valign='top'>2</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>1</td>
        <td class='normal' valign='top'>3</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>2</td>
        <td class='normal' valign='top'>3</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>3</td>
        <td class='normal' valign='top'>7</td>
    </tr>
</table>
</p>

<p><strong>MovieRating</strong><br/>
<table border=1>
    <tr>
        <td bgcolor=silver class='medium'>Field</td>
        <td bgcolor=silver class='medium'>Type</td>
        <td bgcolor=silver class='medium'>Null</td>
        <td bgcolor=silver class='medium'>Key</td>
        <td bgcolor=silver class='medium'>Default</td>
        <td bgcolor=silver class='medium'>Extra</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>accountid</td>
        <td class='normal' valign='top'>int(11)</td>
        <td class='normal' valign='top'>YES</td>
        <td class='normal' valign='top'>MUL</td>
        <td class='normal' valign='top'>NULL</td>
        <td class='normal' valign='top'></td>
    </tr>

    <tr>
        <td class='normal' valign='top'>movieid</td>
        <td class='normal' valign='top'>int(11)</td>
        <td class='normal' valign='top'>YES</td>
        <td class='normal' valign='top'>MUL</td>
        <td class='normal' valign='top'>NULL</td>
        <td class='normal' valign='top'></td>
    </tr>

    <tr>
        <td class='normal' valign='top'>rating</td>
        <td class='normal' valign='top'>int(11)</td>
        <td class='normal' valign='top'>YES</td>
        <td class='normal' valign='top'></td>
        <td class='normal' valign='top'>NULL</td>
        <td class='normal' valign='top'></td>
    </tr>
</table>
<br/>Sample data:
<table border=1>
    <tr>
        <td bgcolor=silver class='medium'>accountid</td>
        <td bgcolor=silver class='medium'>movieid</td>
        <td bgcolor=silver class='medium'>rating</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>1</td>
        <td class='normal' valign='top'>1</td>
        <td class='normal' valign='top'>5</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>1</td>
        <td class='normal' valign='top'>2</td>
        <td class='normal' valign='top'>7</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>1</td>
        <td class='normal' valign='top'>3</td>
        <td class='normal' valign='top'>9</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>2</td>
        <td class='normal' valign='top'>3</td>
        <td class='normal' valign='top'>6</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>2</td>
        <td class='normal' valign='top'>2</td>
        <td class='normal' valign='top'>6</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>2</td>
        <td class='normal' valign='top'>1</td>
        <td class='normal' valign='top'>6</td>
    </tr>
</table>
</p>

<p><strong>Person</strong><br/>
<table border=1>
    <tr>
        <td bgcolor=silver class='medium'>Field</td>
        <td bgcolor=silver class='medium'>Type</td>
        <td bgcolor=silver class='medium'>Null</td>
        <td bgcolor=silver class='medium'>Key</td>
        <td bgcolor=silver class='medium'>Default</td>
        <td bgcolor=silver class='medium'>Extra</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>ssn</td>
        <td class='normal' valign='top'>int(11)</td>
        <td class='normal' valign='top'>NO</td>
        <td class='normal' valign='top'>PRI</td>
        <td class='normal' valign='top'>0</td>
        <td class='normal' valign='top'></td>
    </tr>

    <tr>
        <td class='normal' valign='top'>lastname</td>
        <td class='normal' valign='top'>varchar(20)</td>
        <td class='normal' valign='top'>NO</td>
        <td class='normal' valign='top'></td>
        <td class='normal' valign='top'>NULL</td>
        <td class='normal' valign='top'></td>
    </tr>

    <tr>
        <td class='normal' valign='top'>firstname</td>
        <td class='normal' valign='top'>varchar(20)</td>
        <td class='normal' valign='top'>NO</td>
        <td class='normal' valign='top'></td>
        <td class='normal' valign='top'>NULL</td>
        <td class='normal' valign='top'></td>
    </tr>

    <tr>
        <td class='normal' valign='top'>address</td>
        <td class='normal' valign='top'>varchar(50)</td>
        <td class='normal' valign='top'>NO</td>
        <td class='normal' valign='top'></td>
        <td class='normal' valign='top'>NULL</td>
        <td class='normal' valign='top'></td>
    </tr>

    <tr>
        <td class='normal' valign='top'>zipcode</td>
        <td class='normal' valign='top'>int(11)</td>
        <td class='normal' valign='top'>YES</td>
        <td class='normal' valign='top'>MUL</td>
        <td class='normal' valign='top'>NULL</td>
        <td class='normal' valign='top'></td>
    </tr>

    <tr>
        <td class='normal' valign='top'>telephone</td>
        <td class='normal' valign='top'>bigint(20)</td>
        <td class='normal' valign='top'>YES</td>
        <td class='normal' valign='top'></td>
        <td class='normal' valign='top'>NULL</td>
        <td class='normal' valign='top'></td>
    </tr>

    <tr>
        <td class='normal' valign='top'>email</td>
        <td class='normal' valign='top'>varchar(50)</td>
        <td class='normal' valign='top'>NO</td>
        <td class='normal' valign='top'>UNI</td>
        <td class='normal' valign='top'>NULL</td>
        <td class='normal' valign='top'></td>
    </tr>

    <tr>
        <td class='normal' valign='top'>pass</td>
        <td class='normal' valign='top'>varchar(64)</td>
        <td class='normal' valign='top'>NO</td>
        <td class='normal' valign='top'></td>
        <td class='normal' valign='top'>NULL</td>
        <td class='normal' valign='top'></td>
    </tr>
</table>
<br/>Sample data:
<table border=1>
    <tr>
        <td bgcolor=silver class='medium'>ssn</td>
        <td bgcolor=silver class='medium'>lastname</td>
        <td bgcolor=silver class='medium'>firstname</td>
        <td bgcolor=silver class='medium'>address</td>
        <td bgcolor=silver class='medium'>zipcode</td>
        <td bgcolor=silver class='medium'>telephone</td>
        <td bgcolor=silver class='medium'>email</td>
        <td bgcolor=silver class='medium'>pass</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>111111111</td>
        <td class='normal' valign='top'>Yang</td>
        <td class='normal' valign='top'>Shang</td>
        <td class='normal' valign='top'>123 Success Street</td>
        <td class='normal' valign='top'>11794</td>
        <td class='normal' valign='top'>5166328959</td>
        <td class='normal' valign='top'>cat</td>
        <td class='normal' valign='top'>123</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>114523222</td>
        <td class='normal' valign='top'>chen</td>
        <td class='normal' valign='top'>jas</td>
        <td class='normal' valign='top'>jklasdf</td>
        <td class='normal' valign='top'>11592</td>
        <td class='normal' valign='top'>123</td>
        <td class='normal' valign='top'>cats@cats.com</td>
        <td class='normal' valign='top'></td>
    </tr>

    <tr>
        <td class='normal' valign='top'>123456789</td>
        <td class='normal' valign='top'>Smith</td>
        <td class='normal' valign='top'>David</td>
        <td class='normal' valign='top'>123 College road</td>
        <td class='normal' valign='top'>11790</td>
        <td class='normal' valign='top'>5162152345</td>
        <td class='normal' valign='top'>bas</td>
        <td class='normal' valign='top'>1</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>222222222</td>
        <td class='normal' valign='top'>Smither</td>
        <td class='normal' valign='top'>Victor</td>
        <td class='normal' valign='top'>456 Fortune Road</td>
        <td class='normal' valign='top'>11790</td>
        <td class='normal' valign='top'>5166324360</td>
        <td class='normal' valign='top'>dat</td>
        <td class='normal' valign='top'></td>
    </tr>

    <tr>
        <td class='normal' valign='top'>333333333</td>
        <td class='normal' valign='top'>Smith</td>
        <td class='normal' valign='top'>John</td>
        <td class='normal' valign='top'>789 Peace Blvd</td>
        <td class='normal' valign='top'>93536</td>
        <td class='normal' valign='top'>3154434321</td>
        <td class='normal' valign='top'>smithj@cs.sunysb.edu</td>
        <td class='normal' valign='top'></td>
    </tr>

    <tr>
        <td class='normal' valign='top'>444444444</td>
        <td class='normal' valign='top'>Philip</td>
        <td class='normal' valign='top'>Lewis</td>
        <td class='normal' valign='top'>135 Knowledge Lane</td>
        <td class='normal' valign='top'>11794</td>
        <td class='normal' valign='top'>5166668888</td>
        <td class='normal' valign='top'>baby@cs.sunysb.edu</td>
        <td class='normal' valign='top'></td>
    </tr>

    <tr>
        <td class='normal' valign='top'>789123456</td>
        <td class='normal' valign='top'>Warren</td>
        <td class='normal' valign='top'>David</td>
        <td class='normal' valign='top'>456 Sunken Street</td>
        <td class='normal' valign='top'>11794</td>
        <td class='normal' valign='top'>6316329987</td>
        <td class='normal' valign='top'>asdf</td>
        <td class='normal' valign='top'>asdf</td>
    </tr>
</table>
</p>

<p><strong>Purchase</strong><br/>
<table border=1>
    <tr>
        <td bgcolor=silver class='medium'>Field</td>
        <td bgcolor=silver class='medium'>Type</td>
        <td bgcolor=silver class='medium'>Null</td>
        <td bgcolor=silver class='medium'>Key</td>
        <td bgcolor=silver class='medium'>Default</td>
        <td bgcolor=silver class='medium'>Extra</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>id</td>
        <td class='normal' valign='top'>int(11)</td>
        <td class='normal' valign='top'>NO</td>
        <td class='normal' valign='top'>PRI</td>
        <td class='normal' valign='top'>NULL</td>
        <td class='normal' valign='top'>auto_increment</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>datetime</td>
        <td class='normal' valign='top'>datetime</td>
        <td class='normal' valign='top'>YES</td>
        <td class='normal' valign='top'></td>
        <td class='normal' valign='top'>NULL</td>
        <td class='normal' valign='top'></td>
    </tr>

    <tr>
        <td class='normal' valign='top'>returndate</td>
        <td class='normal' valign='top'>date</td>
        <td class='normal' valign='top'>YES</td>
        <td class='normal' valign='top'></td>
        <td class='normal' valign='top'>NULL</td>
        <td class='normal' valign='top'></td>
    </tr>
</table>
<br/>Sample data:
<table border=1>
    <tr>
        <td bgcolor=silver class='medium'>id</td>
        <td bgcolor=silver class='medium'>datetime</td>
        <td bgcolor=silver class='medium'>returndate</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>1</td>
        <td class='normal' valign='top'>2009-11-11 10:00:00</td>
        <td class='normal' valign='top'>2009-11-14</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>2</td>
        <td class='normal' valign='top'>2009-11-11 18:15:00</td>
        <td class='normal' valign='top'>NULL</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>3</td>
        <td class='normal' valign='top'>2009-11-12 09:30:00</td>
        <td class='normal' valign='top'>NULL</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>4</td>
        <td class='normal' valign='top'>2009-11-21 22:22:00</td>
        <td class='normal' valign='top'>NULL</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>5</td>
        <td class='normal' valign='top'>2011-02-12 00:00:00</td>
        <td class='normal' valign='top'>NULL</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>6</td>
        <td class='normal' valign='top'>2010-03-04 00:00:00</td>
        <td class='normal' valign='top'>NULL</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>7</td>
        <td class='normal' valign='top'>2013-04-01 14:14:14</td>
        <td class='normal' valign='top'>2013-04-07</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>8</td>
        <td class='normal' valign='top'>2013-04-01 14:14:14</td>
        <td class='normal' valign='top'>2013-04-07</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>9</td>
        <td class='normal' valign='top'>2013-04-01 14:24:14</td>
        <td class='normal' valign='top'>2013-04-17</td>
    </tr>
</table>
</p>

<p><strong>Rental</strong><br/>
<table border=1>
    <tr>
        <td bgcolor=silver class='medium'>Field</td>
        <td bgcolor=silver class='medium'>Type</td>
        <td bgcolor=silver class='medium'>Null</td>
        <td bgcolor=silver class='medium'>Key</td>
        <td bgcolor=silver class='medium'>Default</td>
        <td bgcolor=silver class='medium'>Extra</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>accountid</td>
        <td class='normal' valign='top'>int(11)</td>
        <td class='normal' valign='top'>NO</td>
        <td class='normal' valign='top'>PRI</td>
        <td class='normal' valign='top'>0</td>
        <td class='normal' valign='top'></td>
    </tr>

    <tr>
        <td class='normal' valign='top'>employid</td>
        <td class='normal' valign='top'>int(11)</td>
        <td class='normal' valign='top'>NO</td>
        <td class='normal' valign='top'>PRI</td>
        <td class='normal' valign='top'>0</td>
        <td class='normal' valign='top'></td>
    </tr>

    <tr>
        <td class='normal' valign='top'>movieid</td>
        <td class='normal' valign='top'>int(11)</td>
        <td class='normal' valign='top'>NO</td>
        <td class='normal' valign='top'>PRI</td>
        <td class='normal' valign='top'>0</td>
        <td class='normal' valign='top'></td>
    </tr>

    <tr>
        <td class='normal' valign='top'>purchid</td>
        <td class='normal' valign='top'>int(11)</td>
        <td class='normal' valign='top'>NO</td>
        <td class='normal' valign='top'>PRI</td>
        <td class='normal' valign='top'>0</td>
        <td class='normal' valign='top'></td>
    </tr>
</table>
<br/>Sample data:
<table border=1>
    <tr>
        <td bgcolor=silver class='medium'>accountid</td>
        <td bgcolor=silver class='medium'>employid</td>
        <td bgcolor=silver class='medium'>movieid</td>
        <td bgcolor=silver class='medium'>purchid</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>1</td>
        <td class='normal' valign='top'>1</td>
        <td class='normal' valign='top'>1</td>
        <td class='normal' valign='top'>1</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>1</td>
        <td class='normal' valign='top'>1</td>
        <td class='normal' valign='top'>1</td>
        <td class='normal' valign='top'>7</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>3</td>
        <td class='normal' valign='top'>1</td>
        <td class='normal' valign='top'>1</td>
        <td class='normal' valign='top'>5</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>2</td>
        <td class='normal' valign='top'>1</td>
        <td class='normal' valign='top'>2</td>
        <td class='normal' valign='top'>4</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>2</td>
        <td class='normal' valign='top'>2</td>
        <td class='normal' valign='top'>2</td>
        <td class='normal' valign='top'>9</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>1</td>
        <td class='normal' valign='top'>1</td>
        <td class='normal' valign='top'>3</td>
        <td class='normal' valign='top'>3</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>2</td>
        <td class='normal' valign='top'>1</td>
        <td class='normal' valign='top'>3</td>
        <td class='normal' valign='top'>2</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>2</td>
        <td class='normal' valign='top'>1</td>
        <td class='normal' valign='top'>3</td>
        <td class='normal' valign='top'>8</td>
    </tr>

    <tr>
        <td class='normal' valign='top'>3</td>
        <td class='normal' valign='top'>1</td>
        <td class='normal' valign='top'>8</td>
        <td class='normal' valign='top'>6</td>
    </tr>
</table>
</p>

</div>