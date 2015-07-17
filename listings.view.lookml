- view: listings
  sql_table_name: public.listings
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: acc_now_delinq
    type: int
    sql: ${TABLE}.accNowDelinq

  - dimension: acc_open_past24_mths
    type: int
    sql: ${TABLE}.accOpenPast24Mths

  - dimension: accept_d
    sql: ${TABLE}.acceptD

  - dimension: addr_city
    sql: ${TABLE}.addrCity

  - dimension: addr_state
    sql: ${TABLE}.addrState

  - dimension: addr_zip
    sql: ${TABLE}.addrZip

  - dimension: annual_inc
    type: number
    sql: ${TABLE}.annualInc

  - dimension: as_of_date
    sql: ${TABLE}.as_of_date

  - dimension: avg_cur_bal
    type: number
    sql: ${TABLE}.avgCurBal

  - dimension: bc_open_to_buy
    type: number
    sql: ${TABLE}.bcOpenToBuy

  - dimension: bc_util
    type: number
    sql: ${TABLE}.bcUtil

  - dimension: chargeoff_within12_mths
    type: int
    sql: ${TABLE}.chargeoffWithin12Mths

  - dimension: collections12_mths_ex_med
    type: int
    sql: ${TABLE}.collections12MthsExMed

  - dimension: credit_pull_d
    sql: ${TABLE}.creditPullD

  - dimension: delinq2_yrs
    type: int
    sql: ${TABLE}.delinq2Yrs

  - dimension: delinq_amnt
    type: number
    sql: ${TABLE}.delinqAmnt

  - dimension: desc
    sql: ${TABLE}.desc

  - dimension: dti
    type: number
    sql: ${TABLE}.dti

  - dimension: earliest_cr_line
    sql: ${TABLE}.earliestCrLine

  - dimension: emp_length
    type: int
    sql: ${TABLE}.empLength

  - dimension: emp_title
    sql: ${TABLE}.empTitle

  - dimension: exp_d
    sql: ${TABLE}.expD

  - dimension: exp_default_rate
    type: number
    sql: ${TABLE}.expDefaultRate

  - dimension: fico_range_high
    type: int
    sql: ${TABLE}.ficoRangeHigh

  - dimension: fico_range_low
    type: int
    sql: ${TABLE}.ficoRangeLow

  - dimension: funded_amount
    type: number
    sql: ${TABLE}.fundedAmount

  - dimension: grade
    sql: ${TABLE}.grade

  - dimension: home_ownership
    sql: ${TABLE}.homeOwnership

  - dimension: ils_exp_d
    sql: ${TABLE}.ilsExpD

  - dimension: initial_list_status
    sql: ${TABLE}.initialListStatus

  - dimension: inq_last6_mths
    type: int
    sql: ${TABLE}.inqLast6Mths

  - dimension: installment
    type: number
    sql: ${TABLE}.installment

  - dimension: int_rate
    type: number
    sql: ${TABLE}.intRate

  - dimension: investor_count
    type: int
    sql: ${TABLE}.investorCount

  - dimension: is_inc_v
    sql: ${TABLE}.isIncV

  - dimension: list_d
    sql: ${TABLE}.listD

  - dimension: loan_amount
    type: number
    sql: ${TABLE}.loanAmount

  - dimension: looker_is_pull_all
    type: yesno
    sql: ${TABLE}.looker_is_pull_all

  - dimension: member_id
    type: int
    sql: ${TABLE}.memberId

  - dimension: mo_sin_old_il_acct
    type: int
    sql: ${TABLE}.moSinOldIlAcct

  - dimension: mo_sin_old_rev_tl_op
    type: int
    sql: ${TABLE}.moSinOldRevTlOp

  - dimension: mo_sin_rcnt_rev_tl_op
    type: int
    sql: ${TABLE}.moSinRcntRevTlOp

  - dimension: mo_sin_rcnt_tl
    type: int
    sql: ${TABLE}.moSinRcntTl

  - dimension: mort_acc
    type: int
    sql: ${TABLE}.mortAcc

  - dimension: mths_since_last_delinq
    type: int
    sql: ${TABLE}.mthsSinceLastDelinq

  - dimension: mths_since_last_major_derog
    type: int
    sql: ${TABLE}.mthsSinceLastMajorDerog

  - dimension: mths_since_last_record
    type: int
    sql: ${TABLE}.mthsSinceLastRecord

  - dimension: mths_since_recent_bc
    type: int
    sql: ${TABLE}.mthsSinceRecentBc

  - dimension: mths_since_recent_bc_dlq
    type: int
    sql: ${TABLE}.mthsSinceRecentBcDlq

  - dimension: mths_since_recent_inq
    type: int
    sql: ${TABLE}.mthsSinceRecentInq

  - dimension: mths_since_recent_revol_delinq
    type: int
    sql: ${TABLE}.mthsSinceRecentRevolDelinq

  - dimension: num_accts_ever120_ppd
    type: int
    sql: ${TABLE}.numAcctsEver120Ppd

  - dimension: num_actv_bc_tl
    type: int
    sql: ${TABLE}.numActvBcTl

  - dimension: num_actv_rev_tl
    type: int
    sql: ${TABLE}.numActvRevTl

  - dimension: num_bc_sats
    type: int
    sql: ${TABLE}.numBcSats

  - dimension: num_bc_tl
    type: int
    sql: ${TABLE}.numBcTl

  - dimension: num_il_tl
    type: int
    sql: ${TABLE}.numIlTl

  - dimension: num_op_rev_tl
    type: int
    sql: ${TABLE}.numOpRevTl

  - dimension: num_rev_accts
    type: int
    sql: ${TABLE}.numRevAccts

  - dimension: num_rev_tl_bal_gt0
    type: int
    sql: ${TABLE}.numRevTlBalGt0

  - dimension: num_sats
    type: int
    sql: ${TABLE}.numSats

  - dimension: num_tl120dpd2m
    type: int
    sql: ${TABLE}.numTl120dpd2m

  - dimension: num_tl30dpd
    type: int
    sql: ${TABLE}.numTl30dpd

  - dimension: num_tl90g_dpd24m
    type: int
    sql: ${TABLE}.numTl90gDpd24m

  - dimension: num_tl_op_past12m
    type: int
    sql: ${TABLE}.numTlOpPast12m

  - dimension: open_acc
    type: int
    sql: ${TABLE}.openAcc

  - dimension: pct_tl_nvr_dlq
    type: number
    sql: ${TABLE}.pctTlNvrDlq

  - dimension: percent_bc_gt75
    type: number
    sql: ${TABLE}.percentBcGt75

  - dimension: pub_rec
    type: int
    sql: ${TABLE}.pubRec

  - dimension: pub_rec_bankruptcies
    type: int
    sql: ${TABLE}.pubRecBankruptcies

  - dimension: purpose
    sql: ${TABLE}.purpose

  - dimension: review_status
    sql: ${TABLE}.reviewStatus

  - dimension: review_status_d
    sql: ${TABLE}.reviewStatusD

  - dimension: revol_bal
    type: number
    sql: ${TABLE}.revolBal

  - dimension: revol_util
    type: number
    sql: ${TABLE}.revolUtil

  - dimension: service_fee_rate
    type: number
    sql: ${TABLE}.serviceFeeRate

  - dimension: sub_grade
    sql: ${TABLE}.subGrade

  - dimension: tax_liens
    type: int
    sql: ${TABLE}.taxLiens

  - dimension: term
    type: int
    sql: ${TABLE}.term

  - dimension: tot_coll_amt
    type: number
    sql: ${TABLE}.totCollAmt

  - dimension: tot_cur_bal
    type: number
    sql: ${TABLE}.totCurBal

  - dimension: tot_hi_cred_lim
    type: int
    sql: ${TABLE}.totHiCredLim

  - dimension: total_acc
    type: int
    sql: ${TABLE}.totalAcc

  - dimension: total_bal_ex_mort
    type: number
    sql: ${TABLE}.totalBalExMort

  - dimension: total_bc_limit
    type: int
    sql: ${TABLE}.totalBcLimit

  - dimension: total_il_high_credit_limit
    type: number
    sql: ${TABLE}.totalIlHighCreditLimit

  - dimension: total_rev_hi_lim
    type: int
    sql: ${TABLE}.totalRevHiLim

  - measure: count
    type: count
    drill_fields: [id]

