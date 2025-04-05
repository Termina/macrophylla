
{} (:package |app)
  :configs $ {} (:init-fn |app.client/main!) (:port 6001) (:reload-fn |app.client/reload!) (:storage-key |calcit.cirru) (:version |0.0.1)
    :modules $ [] |respo.calcit/ |lilac/ |recollect/ |memof/ |respo-ui.calcit/ |ws-edn.calcit/ |cumulo-util.calcit/ |respo-message.calcit/ |cumulo-reel.calcit/
  :entries $ {}
    :server $ {} (:init-fn |app.server/main!) (:port 6001) (:reload-fn |app.server/reload!) (:storage-key |calcit.cirru)
      :modules $ [] |lilac/ |recollect/ |memof/ |ws-edn.calcit/ |cumulo-util.calcit/ |cumulo-reel.calcit/ |calcit-wss/ |calcit.std/
  :files $ {}
    |app.client $ %{} :FileEntry
      :defs $ {}
        |*states $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1614526454434) (:by |B1y7Rc-Zz) (:text |defatom)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |*states)
              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1584880530097) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1584880530868) (:by |B1y7Rc-Zz) (:text |:states)
                      |j $ %{} :Expr (:at 1584880531270) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1584880532120) (:by |B1y7Rc-Zz) (:text |{})
                          |j $ %{} :Expr (:at 1584880533921) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1584880536346) (:by |B1y7Rc-Zz) (:text |:cursor)
                              |j $ %{} :Expr (:at 1584880536607) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1584880536837) (:by |B1y7Rc-Zz) (:text |[])
        |*store $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1614525705973) (:by |B1y7Rc-Zz) (:text |defatom)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |*store)
              |r $ %{} :Expr (:at 1690018078353) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1690018078625) (:by |B1y7Rc-Zz) (:text |::)
                  |b $ %{} :Leaf (:at 1690018080657) (:by |B1y7Rc-Zz) (:text |:loading)
        |connect! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1614525521984) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1512319373663) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1512319373663) (:by |B1y7Rc-Zz) (:text |connect!)
              |r $ %{} :Expr (:at 1512319373663) (:by |B1y7Rc-Zz)
                :data $ {}
              |x $ %{} :Expr (:at 1553788378469) (:by |B1y7Rc-Zz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1553788379239) (:by |B1y7Rc-Zz) (:text |let)
                  |L $ %{} :Expr (:at 1553788379472) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1553788379640) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553788383202) (:by |B1y7Rc-Zz) (:text |url-obj)
                          |j $ %{} :Expr (:at 1553788393763) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1621415162157) (:by |B1y7Rc-Zz) (:text |url-parse)
                              |j $ %{} :Leaf (:at 1553788399043) (:by |B1y7Rc-Zz) (:text |js/location.href)
                              |r $ %{} :Leaf (:at 1553788401386) (:by |B1y7Rc-Zz) (:text |true)
                      |j $ %{} :Expr (:at 1553788405426) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553788408901) (:by |B1y7Rc-Zz) (:text |host)
                          |j $ %{} :Expr (:at 1553788409541) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1621415492748) (:by |B1y7Rc-Zz) (:text |either)
                              |n $ %{} :Expr (:at 1614525568953) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1614525578400) (:by |B1y7Rc-Zz) (:text |->)
                                  |j $ %{} :Leaf (:at 1614525580370) (:by |B1y7Rc-Zz) (:text |url-obj)
                                  |r $ %{} :Leaf (:at 1614525583894) (:by |B1y7Rc-Zz) (:text |.-query)
                                  |v $ %{} :Leaf (:at 1614525585769) (:by |B1y7Rc-Zz) (:text |.-host)
                              |r $ %{} :Leaf (:at 1553788646585) (:by |B1y7Rc-Zz) (:text |js/location.hostname)
                      |r $ %{} :Expr (:at 1553788436209) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553788437435) (:by |B1y7Rc-Zz) (:text |port)
                          |j $ %{} :Expr (:at 1553788439662) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1621415494658) (:by |B1y7Rc-Zz) (:text |either)
                              |n $ %{} :Expr (:at 1614525591023) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1614525592154) (:by |B1y7Rc-Zz) (:text |->)
                                  |j $ %{} :Leaf (:at 1614525594677) (:by |B1y7Rc-Zz) (:text |url-obj)
                                  |r $ %{} :Leaf (:at 1614525597119) (:by |B1y7Rc-Zz) (:text |.-query)
                                  |v $ %{} :Leaf (:at 1614525598970) (:by |B1y7Rc-Zz) (:text |.-port)
                              |r $ %{} :Expr (:at 1553788442474) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553788445264) (:by |B1y7Rc-Zz) (:text |:port)
                                  |j $ %{} :Leaf (:at 1553788448092) (:by |B1y7Rc-Zz) (:text |config/site)
                  |P $ %{} :Expr (:at 1690018291672) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1690018291672) (:by |B1y7Rc-Zz) (:text |reset!)
                      |b $ %{} :Leaf (:at 1690018291672) (:by |B1y7Rc-Zz) (:text |*store)
                      |h $ %{} :Expr (:at 1690018291672) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1690018291672) (:by |B1y7Rc-Zz) (:text |::)
                          |b $ %{} :Leaf (:at 1690018294675) (:by |B1y7Rc-Zz) (:text |:loading)
                  |T $ %{} :Expr (:at 1544638774501) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1544638840280) (:by |B1y7Rc-Zz) (:text |ws-connect!)
                      |f $ %{} :Expr (:at 1553788636995) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1614525533043) (:by |B1y7Rc-Zz) (:text |str)
                          |T $ %{} :Leaf (:at 1614525545188) (:by |B1y7Rc-Zz) (:text "|\"ws://")
                          |X $ %{} :Leaf (:at 1614525546789) (:by |B1y7Rc-Zz) (:text |host)
                          |b $ %{} :Leaf (:at 1614525548655) (:by |B1y7Rc-Zz) (:text "|\":")
                          |j $ %{} :Leaf (:at 1614525534845) (:by |B1y7Rc-Zz) (:text |port)
                      |r $ %{} :Expr (:at 1544638846433) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1544638847731) (:by |B1y7Rc-Zz) (:text |{})
                          |j $ %{} :Expr (:at 1544638848381) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1544810950316) (:by |B1y7Rc-Zz) (:text |:on-open)
                              |j $ %{} :Expr (:at 1544638852318) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1544638853098) (:by |B1y7Rc-Zz) (:text |fn)
                                  |j $ %{} :Expr (:at 1544638853478) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1614610706253) (:by |B1y7Rc-Zz) (:text |event)
                                  |r $ %{} :Expr (:at 1544638857743) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1544638857743) (:by |B1y7Rc-Zz) (:text |simulate-login!)
                          |r $ %{} :Expr (:at 1544638859520) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1544810951523) (:by |B1y7Rc-Zz) (:text |:on-close)
                              |j $ %{} :Expr (:at 1544638867412) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1544638867713) (:by |B1y7Rc-Zz) (:text |fn)
                                  |j $ %{} :Expr (:at 1544638868024) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1544638868717) (:by |B1y7Rc-Zz) (:text |event)
                                  |r $ %{} :Expr (:at 1544638871456) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1544638871456) (:by |B1y7Rc-Zz) (:text |reset!)
                                      |j $ %{} :Leaf (:at 1544638871456) (:by |B1y7Rc-Zz) (:text |*store)
                                      |r $ %{} :Expr (:at 1690018105139) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1690018105635) (:by |B1y7Rc-Zz) (:text |::)
                                          |b $ %{} :Leaf (:at 1690018108288) (:by |B1y7Rc-Zz) (:text |:offline)
                                  |v $ %{} :Expr (:at 1544638875269) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |j $ %{} :Leaf (:at 1544811061561) (:by |B1y7Rc-Zz) (:text |js/console.error)
                                      |r $ %{} :Leaf (:at 1544811080765) (:by |B1y7Rc-Zz) (:text "|\"Lost connection!")
                          |v $ %{} :Expr (:at 1544638877701) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1544810952720) (:by |B1y7Rc-Zz) (:text |:on-data)
                              |j $ %{} :Leaf (:at 1621415451663) (:by |B1y7Rc-Zz) (:text |on-server-data)
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |dispatch!)
              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |op)
                  |b $ %{} :Leaf (:at 1688226000796) (:by |B1y7Rc-Zz) (:text |?)
                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |op-data)
              |v $ %{} :Expr (:at 1545107418516) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1545107418516) (:by |root) (:text |when)
                  |j $ %{} :Expr (:at 1545107418516) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1545107418516) (:by |root) (:text |and)
                      |j $ %{} :Leaf (:at 1545107418516) (:by |root) (:text |config/dev?)
                      |r $ %{} :Expr (:at 1545107418516) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1545107418516) (:by |root) (:text |not=)
                          |j $ %{} :Leaf (:at 1545107418516) (:by |root) (:text |op)
                          |r $ %{} :Leaf (:at 1545107418516) (:by |root) (:text |:states)
                  |r $ %{} :Expr (:at 1545107418516) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1545107418516) (:by |root) (:text |println)
                      |j $ %{} :Leaf (:at 1545107418516) (:by |root) (:text "|\"Dispatch")
                      |r $ %{} :Leaf (:at 1545107418516) (:by |root) (:text |op)
                      |v $ %{} :Leaf (:at 1545107418516) (:by |root) (:text |op-data)
              |x $ %{} :Expr (:at 1688226032832) (:by |B1y7Rc-Zz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1688226035036) (:by |B1y7Rc-Zz) (:text |if)
                  |L $ %{} :Expr (:at 1688226035789) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1688226045283) (:by |B1y7Rc-Zz) (:text |tag?)
                      |b $ %{} :Leaf (:at 1688226046140) (:by |B1y7Rc-Zz) (:text |op)
                  |P $ %{} :Expr (:at 1688226047134) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1688226047848) (:by |B1y7Rc-Zz) (:text |recur)
                      |b $ %{} :Expr (:at 1688226050466) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1688226052789) (:by |B1y7Rc-Zz) (:text |::)
                          |b $ %{} :Leaf (:at 1688226053221) (:by |B1y7Rc-Zz) (:text |op)
                          |h $ %{} :Leaf (:at 1688226057377) (:by |B1y7Rc-Zz) (:text |op-data)
                  |T $ %{} :Expr (:at 1512319531669) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1688226019553) (:by |B1y7Rc-Zz) (:text |tag-match)
                      |L $ %{} :Leaf (:at 1512319536359) (:by |B1y7Rc-Zz) (:text |op)
                      |T $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |j $ %{} :Expr (:at 1688226003891) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:states)
                              |b $ %{} :Leaf (:at 1688226005122) (:by |B1y7Rc-Zz) (:text |cursor)
                              |h $ %{} :Leaf (:at 1688226006651) (:by |B1y7Rc-Zz) (:text |s)
                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |reset!)
                              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |*states)
                              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1584877147216) (:by |B1y7Rc-Zz) (:text |update-states)
                                  |j $ %{} :Leaf (:at 1584874358841) (:by |B1y7Rc-Zz) (:text |@*states)
                                  |r $ %{} :Leaf (:at 1688226011013) (:by |B1y7Rc-Zz) (:text |cursor)
                                  |t $ %{} :Leaf (:at 1688226011313) (:by |B1y7Rc-Zz) (:text |s)
                      |j $ %{} :Expr (:at 1688226020964) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Expr (:at 1688226013437) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1512319553572) (:by |B1y7Rc-Zz) (:text |:effect/connect)
                          |b $ %{} :Expr (:at 1512319556120) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1512319559727) (:by |B1y7Rc-Zz) (:text |connect!)
                      |n $ %{} :Expr (:at 1688226021996) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1688226022584) (:by |B1y7Rc-Zz) (:text |_)
                          |b $ %{} :Expr (:at 1688226024831) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1688226023196) (:by |B1y7Rc-Zz) (:text |ws-send!)
                              |b $ %{} :Leaf (:at 1688410689459) (:by |B1y7Rc-Zz) (:text |op)
        |main! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |main!)
              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
              |t $ %{} :Expr (:at 1544874518376) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1544874519276) (:by |B1y7Rc-Zz) (:text |println)
                  |j $ %{} :Leaf (:at 1544874524299) (:by |B1y7Rc-Zz) (:text "|\"Running mode:")
                  |r $ %{} :Expr (:at 1544874525129) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1544874525354) (:by |B1y7Rc-Zz) (:text |if)
                      |j $ %{} :Leaf (:at 1544874529605) (:by |B1y7Rc-Zz) (:text |config/dev?)
                      |r $ %{} :Leaf (:at 1544874539526) (:by |B1y7Rc-Zz) (:text "|\"dev")
                      |v $ %{} :Leaf (:at 1544874537560) (:by |B1y7Rc-Zz) (:text "|\"release")
              |v $ %{} :Expr (:at 1688410806444) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1688410806826) (:by |B1y7Rc-Zz) (:text |if)
                  |b $ %{} :Leaf (:at 1688410808387) (:by |B1y7Rc-Zz) (:text |config/dev?)
                  |h $ %{} :Expr (:at 1688410808630) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1688410812271) (:by |B1y7Rc-Zz) (:text |load-console-formatter!)
              |x $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |render-app!)
              |xD $ %{} :Expr (:at 1512319371768) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1512319373162) (:by |B1y7Rc-Zz) (:text |connect!)
              |yT $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |add-watch)
                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |*store)
                  |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:changes)
                  |v $ %{} :Expr (:at 1614525741412) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1614525742643) (:by |B1y7Rc-Zz) (:text |fn)
                      |L $ %{} :Expr (:at 1614525743283) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1614525744144) (:by |B1y7Rc-Zz) (:text |store)
                          |j $ %{} :Leaf (:at 1614525745228) (:by |B1y7Rc-Zz) (:text |prev)
                      |T $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |render-app!)
              |yj $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |add-watch)
                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |*states)
                  |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:changes)
                  |v $ %{} :Expr (:at 1614525748860) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1614525749418) (:by |B1y7Rc-Zz) (:text |fn)
                      |L $ %{} :Expr (:at 1614525749681) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1614525751470) (:by |B1y7Rc-Zz) (:text |states)
                          |j $ %{} :Leaf (:at 1614525753991) (:by |B1y7Rc-Zz) (:text |prev)
                      |T $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |render-app!)
              |yp $ %{} :Expr (:at 1545239347653) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1545239515366) (:by |B1y7Rc-Zz) (:text |on-page-touch)
                  |j $ %{} :Expr (:at 1614525758247) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1614525758804) (:by |B1y7Rc-Zz) (:text |fn)
                      |L $ %{} :Expr (:at 1614525759063) (:by |B1y7Rc-Zz)
                        :data $ {}
                      |T $ %{} :Expr (:at 1545239354450) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1545239386447) (:by |B1y7Rc-Zz) (:text |if)
                          |r $ %{} :Expr (:at 1545239374628) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1690018317374) (:by |B1y7Rc-Zz) (:text |=)
                              |j $ %{} :Leaf (:at 1545239374628) (:by |B1y7Rc-Zz) (:text |@*store)
                              |n $ %{} :Expr (:at 1690018319189) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1690018319770) (:by |B1y7Rc-Zz) (:text |::)
                                  |b $ %{} :Leaf (:at 1690018322310) (:by |B1y7Rc-Zz) (:text |:offline)
                          |v $ %{} :Expr (:at 1545239374628) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1562176366189) (:by |B1y7Rc-Zz) (:text |connect!)
              |yq $ %{} :Expr (:at 1695973849818) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1695974719282) (:by |B1y7Rc-Zz) (:text |visibility-heartbeat)
                  |b $ %{} :Expr (:at 1695973862621) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1695973862843) (:by |B1y7Rc-Zz) (:text |fn)
                      |b $ %{} :Expr (:at 1695973863159) (:by |B1y7Rc-Zz)
                        :data $ {}
                      |h $ %{} :Expr (:at 1695973864214) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695973864637) (:by |B1y7Rc-Zz) (:text |if)
                          |b $ %{} :Expr (:at 1695973868254) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695973903863) (:by |B1y7Rc-Zz) (:text |map?)
                              |b $ %{} :Leaf (:at 1695973868254) (:by |B1y7Rc-Zz) (:text |@*store)
                          |h $ %{} :Expr (:at 1695973942642) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695973942642) (:by |B1y7Rc-Zz) (:text |ws-send!)
                              |b $ %{} :Expr (:at 1695973946455) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695973946847) (:by |B1y7Rc-Zz) (:text |::)
                                  |b $ %{} :Leaf (:at 1695973987360) (:by |B1y7Rc-Zz) (:text |:effect/ping)
              |yr $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |println)
                  |j $ %{} :Leaf (:at 1562176360971) (:by |B1y7Rc-Zz) (:text "|\"App started!")
        |mount-target $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |mount-target)
              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |j $ %{} :Leaf (:at 1636548767187) (:by |B1y7Rc-Zz) (:text |js/document.querySelector)
                  |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text "|\".app")
        |on-server-data $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1621415451663) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1621415457126) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1621415451663) (:by |B1y7Rc-Zz) (:text |on-server-data)
              |r $ %{} :Expr (:at 1621415451663) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1621415451663) (:by |B1y7Rc-Zz) (:text |data)
              |v $ %{} :Expr (:at 1621415451663) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1688322261172) (:by |B1y7Rc-Zz) (:text |tag-match)
                  |d $ %{} :Leaf (:at 1688322263077) (:by |B1y7Rc-Zz) (:text |data)
                  |r $ %{} :Expr (:at 1621415451663) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1688322276885) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1621415451663) (:by |B1y7Rc-Zz) (:text |:patch)
                          |b $ %{} :Leaf (:at 1688322280956) (:by |B1y7Rc-Zz) (:text |changes)
                      |j $ %{} :Expr (:at 1621415451663) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1688322284201) (:by |B1y7Rc-Zz) (:text |do)
                          |r $ %{} :Expr (:at 1621415451663) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1621415451663) (:by |B1y7Rc-Zz) (:text |when)
                              |j $ %{} :Leaf (:at 1621415451663) (:by |B1y7Rc-Zz) (:text |config/dev?)
                              |r $ %{} :Expr (:at 1621415451663) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1621415451663) (:by |B1y7Rc-Zz) (:text |js/console.log)
                                  |j $ %{} :Leaf (:at 1621415451663) (:by |B1y7Rc-Zz) (:text "|\"Changes")
                                  |r $ %{} :Leaf (:at 1621415451663) (:by |B1y7Rc-Zz) (:text |changes)
                          |v $ %{} :Expr (:at 1621415451663) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1621415451663) (:by |B1y7Rc-Zz) (:text |reset!)
                              |j $ %{} :Leaf (:at 1621415451663) (:by |B1y7Rc-Zz) (:text |*store)
                              |r $ %{} :Expr (:at 1621415451663) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1621415451663) (:by |B1y7Rc-Zz) (:text |patch-twig)
                                  |j $ %{} :Leaf (:at 1621415451663) (:by |B1y7Rc-Zz) (:text |@*store)
                                  |r $ %{} :Leaf (:at 1621415451663) (:by |B1y7Rc-Zz) (:text |changes)
                  |s $ %{} :Expr (:at 1695974774229) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1695974775677) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695974780574) (:by |B1y7Rc-Zz) (:text |:effect/pong)
                      |b $ %{} :Expr (:at 1695974781098) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695974784466) (:by |B1y7Rc-Zz) (:text |do)
                          |b $ %{} :Leaf (:at 1695974785771) (:by |B1y7Rc-Zz) (:text |:ok)
                  |t $ %{} :Expr (:at 1688322274902) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1688322275765) (:by |B1y7Rc-Zz) (:text |_)
                      |T $ %{} :Expr (:at 1688322268023) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1688322269583) (:by |B1y7Rc-Zz) (:text |eprintln)
                          |b $ %{} :Leaf (:at 1688322268023) (:by |B1y7Rc-Zz) (:text "|\"unknown server data kind:")
                          |h $ %{} :Leaf (:at 1688322268023) (:by |B1y7Rc-Zz) (:text |data)
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1626338217992) (:by |B1y7Rc-Zz)
            :data $ {}
              |D $ %{} :Leaf (:at 1626338219194) (:by |B1y7Rc-Zz) (:text |defn)
              |L $ %{} :Leaf (:at 1626338221203) (:by |B1y7Rc-Zz) (:text |reload!)
              |P $ %{} :Expr (:at 1626338222598) (:by |B1y7Rc-Zz)
                :data $ {}
              |T $ %{} :Expr (:at 1626338262273) (:by |B1y7Rc-Zz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1626338262693) (:by |B1y7Rc-Zz) (:text |if)
                  |L $ %{} :Expr (:at 1626338263742) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1626338264872) (:by |B1y7Rc-Zz) (:text |some?)
                      |j $ %{} :Leaf (:at 1626338267967) (:by |B1y7Rc-Zz) (:text |client-errors)
                  |P $ %{} :Expr (:at 1626338273279) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1626338274460) (:by |B1y7Rc-Zz) (:text |hud!)
                      |j $ %{} :Leaf (:at 1626338280591) (:by |B1y7Rc-Zz) (:text "|\"error")
                      |r $ %{} :Leaf (:at 1626338290245) (:by |B1y7Rc-Zz) (:text |client-errors)
                  |T $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1626338226848) (:by |B1y7Rc-Zz) (:text |do)
                      |g $ %{} :Expr (:at 1626338298654) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1626338299354) (:by |B1y7Rc-Zz) (:text |hud!)
                          |j $ %{} :Leaf (:at 1626338301802) (:by |B1y7Rc-Zz) (:text "|\"inactive")
                          |r $ %{} :Leaf (:at 1626338303049) (:by |B1y7Rc-Zz) (:text |nil)
                      |t $ %{} :Expr (:at 1615984442030) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1615984445816) (:by |B1y7Rc-Zz) (:text |remove-watch)
                          |j $ %{} :Leaf (:at 1615984447930) (:by |B1y7Rc-Zz) (:text |*store)
                          |r $ %{} :Leaf (:at 1615984458906) (:by |B1y7Rc-Zz) (:text |:changes)
                      |u $ %{} :Expr (:at 1615984442030) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1615984445816) (:by |B1y7Rc-Zz) (:text |remove-watch)
                          |j $ %{} :Leaf (:at 1624470244924) (:by |B1y7Rc-Zz) (:text |*states)
                          |r $ %{} :Leaf (:at 1615984455673) (:by |B1y7Rc-Zz) (:text |:changes)
                      |v $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |clear-cache!)
                      |x $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |render-app!)
                      |xT $ %{} :Expr (:at 1615984434584) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1615984434584) (:by |B1y7Rc-Zz) (:text |add-watch)
                          |j $ %{} :Leaf (:at 1615984434584) (:by |B1y7Rc-Zz) (:text |*store)
                          |r $ %{} :Leaf (:at 1615984434584) (:by |B1y7Rc-Zz) (:text |:changes)
                          |v $ %{} :Expr (:at 1615984434584) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1615984434584) (:by |B1y7Rc-Zz) (:text |fn)
                              |j $ %{} :Expr (:at 1615984434584) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1615984434584) (:by |B1y7Rc-Zz) (:text |store)
                                  |j $ %{} :Leaf (:at 1615984434584) (:by |B1y7Rc-Zz) (:text |prev)
                              |r $ %{} :Expr (:at 1615984434584) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1615984434584) (:by |B1y7Rc-Zz) (:text |render-app!)
                      |xj $ %{} :Expr (:at 1615984439986) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1615984439986) (:by |B1y7Rc-Zz) (:text |add-watch)
                          |j $ %{} :Leaf (:at 1615984439986) (:by |B1y7Rc-Zz) (:text |*states)
                          |r $ %{} :Leaf (:at 1615984439986) (:by |B1y7Rc-Zz) (:text |:changes)
                          |v $ %{} :Expr (:at 1615984439986) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1615984439986) (:by |B1y7Rc-Zz) (:text |fn)
                              |j $ %{} :Expr (:at 1615984439986) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1615984439986) (:by |B1y7Rc-Zz) (:text |states)
                                  |j $ %{} :Leaf (:at 1615984439986) (:by |B1y7Rc-Zz) (:text |prev)
                              |r $ %{} :Expr (:at 1615984439986) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1615984439986) (:by |B1y7Rc-Zz) (:text |render-app!)
                      |y $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |println)
                          |j $ %{} :Leaf (:at 1707394780870) (:by |B1y7Rc-Zz) (:text "|\"Code updated.")
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |render-app!)
              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
              |v $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1624470229531) (:by |B1y7Rc-Zz) (:text |render!)
                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |mount-target)
                  |r $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-container)
                      |j $ %{} :Expr (:at 1584880509935) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1584880511636) (:by |B1y7Rc-Zz) (:text |:states)
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |@*states)
                      |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |@*store)
                  |v $ %{} :Leaf (:at 1512318370491) (:by |B1y7Rc-Zz) (:text |dispatch!)
        |simulate-login! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |simulate-login!)
              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
              |v $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1646152813446) (:by |B1y7Rc-Zz) (:text |if-let)
                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |raw)
                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1646153249846) (:by |B1y7Rc-Zz) (:text |js/localStorage.getItem)
                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:storage-key)
                              |j $ %{} :Leaf (:at 1527788758366) (:by |root) (:text |config/site)
                  |r $ %{} :Expr (:at 1688410543674) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1688410544300) (:by |B1y7Rc-Zz) (:text |let)
                      |L $ %{} :Expr (:at 1688410544514) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Expr (:at 1688410544682) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1688410546313) (:by |B1y7Rc-Zz) (:text |pair)
                              |b $ %{} :Expr (:at 1688410548720) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1688410548720) (:by |B1y7Rc-Zz) (:text |parse-cirru-edn)
                                  |b $ %{} :Leaf (:at 1688410548720) (:by |B1y7Rc-Zz) (:text |raw)
                      |T $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |do)
                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |println)
                              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text "|\"Found storage.")
                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |dispatch!)
                              |j $ %{} :Expr (:at 1688410550339) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1688410551639) (:by |B1y7Rc-Zz) (:text |::)
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:user/log-in)
                                  |b $ %{} :Expr (:at 1688410553137) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1688410554091) (:by |B1y7Rc-Zz) (:text |nth)
                                      |b $ %{} :Leaf (:at 1688410555507) (:by |B1y7Rc-Zz) (:text |pair)
                                      |h $ %{} :Leaf (:at 1688410555825) (:by |B1y7Rc-Zz) (:text |0)
                                  |h $ %{} :Expr (:at 1688410553137) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1688410554091) (:by |B1y7Rc-Zz) (:text |nth)
                                      |b $ %{} :Leaf (:at 1688410555507) (:by |B1y7Rc-Zz) (:text |pair)
                                      |h $ %{} :Leaf (:at 1688410558236) (:by |B1y7Rc-Zz) (:text |1)
                  |t $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |do)
                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |println)
                          |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text "|\"Found no storage.")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541010211) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |app.client)
            |r $ %{} :Expr (:at 1500541010211) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |render!)
                        |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |clear-cache!)
                        |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |realize-ssr!)
                |r $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |respo.cursor)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1584874339542) (:by |B1y7Rc-Zz) (:text |update-states)
                |v $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |app.comp.container)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-container)
                |yT $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |schema)
                |yj $ %{} :Expr (:at 1527788760671) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1527788764341) (:by |root) (:text |app.config)
                    |r $ %{} :Leaf (:at 1527788766627) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1527788767318) (:by |root) (:text |config)
                |yr $ %{} :Expr (:at 1544638775980) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1544638780714) (:by |B1y7Rc-Zz) (:text |ws-edn.client)
                    |r $ %{} :Leaf (:at 1544638782705) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1544638782913) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1544638785998) (:by |B1y7Rc-Zz) (:text |ws-connect!)
                        |r $ %{} :Leaf (:at 1544638787583) (:by |B1y7Rc-Zz) (:text |ws-send!)
                |yv $ %{} :Expr (:at 1544639047460) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1544639048479) (:by |B1y7Rc-Zz) (:text |recollect.patch)
                    |r $ %{} :Leaf (:at 1544639049759) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1544639049952) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1544639057259) (:by |B1y7Rc-Zz) (:text |patch-twig)
                |yx $ %{} :Expr (:at 1545239397101) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1545239402091) (:by |B1y7Rc-Zz) (:text |cumulo-util.core)
                    |r $ %{} :Leaf (:at 1545239402776) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1545239402983) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1545239519506) (:by |B1y7Rc-Zz) (:text |on-page-touch)
                        |n $ %{} :Leaf (:at 1695974718313) (:by |B1y7Rc-Zz) (:text |visibility-heartbeat)
                |yy $ %{} :Expr (:at 1553788385335) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1553788387912) (:by |B1y7Rc-Zz) (:text "|\"url-parse")
                    |r $ %{} :Leaf (:at 1621415158100) (:by |B1y7Rc-Zz) (:text |:default)
                    |v $ %{} :Leaf (:at 1553788391454) (:by |B1y7Rc-Zz) (:text |url-parse)
                |yyT $ %{} :Expr (:at 1626338229349) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1626338231975) (:by |B1y7Rc-Zz) (:text "|\"bottom-tip")
                    |j $ %{} :Leaf (:at 1626338234077) (:by |B1y7Rc-Zz) (:text |:default)
                    |r $ %{} :Leaf (:at 1626338235878) (:by |B1y7Rc-Zz) (:text |hud!)
                |yyj $ %{} :Expr (:at 1626338241765) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1626338248112) (:by |B1y7Rc-Zz) (:text "|\"./calcit.build-errors")
                    |j $ %{} :Leaf (:at 1626338250205) (:by |B1y7Rc-Zz) (:text |:default)
                    |r $ %{} :Leaf (:at 1626338252649) (:by |B1y7Rc-Zz) (:text |client-errors)
    |app.comp.container $ %{} :FileEntry
      :defs $ {}
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-container)
              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |states)
                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |store)
              |v $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |if)
                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1690018113505) (:by |B1y7Rc-Zz) (:text |tuple?)
                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |store)
                  |r $ %{} :Expr (:at 1521951403873) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1521951417580) (:by |root) (:text |comp-offline)
                      |b $ %{} :Leaf (:at 1690018117051) (:by |B1y7Rc-Zz) (:text |store)
                  |v $ %{} :Expr (:at 1690018226782) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1690018227477) (:by |B1y7Rc-Zz) (:text |let)
                      |L $ %{} :Expr (:at 1690018227740) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |5 $ %{} :Expr (:at 1690018242607) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1690018242607) (:by |B1y7Rc-Zz) (:text |state)
                              |b $ %{} :Expr (:at 1690018242607) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1690018242607) (:by |B1y7Rc-Zz) (:text |either)
                                  |b $ %{} :Expr (:at 1690018242607) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1690018242607) (:by |B1y7Rc-Zz) (:text |:data)
                                      |b $ %{} :Leaf (:at 1690018242607) (:by |B1y7Rc-Zz) (:text |states)
                                  |h $ %{} :Expr (:at 1690018242607) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1690018242607) (:by |B1y7Rc-Zz) (:text |{})
                                      |b $ %{} :Expr (:at 1690018242607) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1690018242607) (:by |B1y7Rc-Zz) (:text |:demo)
                                          |b $ %{} :Leaf (:at 1690018242607) (:by |B1y7Rc-Zz) (:text "|\"")
                          |D $ %{} :Expr (:at 1690018232339) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1690018234413) (:by |B1y7Rc-Zz) (:text |session)
                              |b $ %{} :Expr (:at 1690018234413) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1690018234413) (:by |B1y7Rc-Zz) (:text |:session)
                                  |b $ %{} :Expr (:at 1690018234413) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1690018234413) (:by |B1y7Rc-Zz) (:text |either)
                                      |b $ %{} :Leaf (:at 1690018234413) (:by |B1y7Rc-Zz) (:text |store)
                                      |h $ %{} :Expr (:at 1690018234413) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1690018234413) (:by |B1y7Rc-Zz) (:text |{})
                          |T $ %{} :Expr (:at 1690018231298) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1690018231298) (:by |B1y7Rc-Zz) (:text |router)
                              |b $ %{} :Expr (:at 1690018231298) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1690018231298) (:by |B1y7Rc-Zz) (:text |either)
                                  |b $ %{} :Expr (:at 1690018231298) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1690018231298) (:by |B1y7Rc-Zz) (:text |:router)
                                      |b $ %{} :Expr (:at 1690018231298) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1690018231298) (:by |B1y7Rc-Zz) (:text |either)
                                          |b $ %{} :Leaf (:at 1690018231298) (:by |B1y7Rc-Zz) (:text |store)
                                          |h $ %{} :Expr (:at 1690018231298) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1690018231298) (:by |B1y7Rc-Zz) (:text |{})
                                  |h $ %{} :Expr (:at 1690018231298) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1690018231298) (:by |B1y7Rc-Zz) (:text |{})
                          |b $ %{} :Expr (:at 1690018239202) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1690018239202) (:by |B1y7Rc-Zz) (:text |router-data)
                              |b $ %{} :Expr (:at 1690018239202) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1690018239202) (:by |B1y7Rc-Zz) (:text |:data)
                                  |b $ %{} :Leaf (:at 1690018239202) (:by |B1y7Rc-Zz) (:text |router)
                      |T $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1626339681147) (:by |B1y7Rc-Zz) (:text |div)
                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657793853925) (:by |B1y7Rc-Zz) (:text |:class-name)
                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657793905179) (:by |B1y7Rc-Zz) (:text |str-spaced)
                                      |b $ %{} :Leaf (:at 1701795010032) (:by |B1y7Rc-Zz) (:text |css/preset)
                                      |j $ %{} :Leaf (:at 1657793906562) (:by |B1y7Rc-Zz) (:text |css/global)
                                      |r $ %{} :Leaf (:at 1657793908401) (:by |B1y7Rc-Zz) (:text |css/fullscreen)
                                      |v $ %{} :Leaf (:at 1657793910144) (:by |B1y7Rc-Zz) (:text |css/column)
                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1523120265747) (:by |root) (:text |comp-navigation)
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:logged-in?)
                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |store)
                              |r $ %{} :Expr (:at 1523120353961) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1523120357277) (:by |root) (:text |:count)
                                  |j $ %{} :Leaf (:at 1523120358953) (:by |root) (:text |store)
                          |v $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |if)
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:logged-in?)
                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |store)
                              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1624471743485) (:by |B1y7Rc-Zz) (:text |case-default)
                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:name)
                                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |router)
                                  |l $ %{} :Expr (:at 1636636738428) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1636636738428) (:by |B1y7Rc-Zz) (:text |<>)
                                      |j $ %{} :Leaf (:at 1636636738428) (:by |B1y7Rc-Zz) (:text |router)
                                  |n $ %{} :Expr (:at 1525106918943) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1525106921967) (:by |root) (:text |:home)
                                      |j $ %{} :Expr (:at 1615983410742) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1615983411413) (:by |B1y7Rc-Zz) (:text |div)
                                          |L $ %{} :Expr (:at 1615983411569) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1615983411979) (:by |B1y7Rc-Zz) (:text |{})
                                              |b $ %{} :Expr (:at 1657793997580) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1657794001542) (:by |B1y7Rc-Zz) (:text |:class-name)
                                                  |b $ %{} :Leaf (:at 1657794003581) (:by |B1y7Rc-Zz) (:text |css/expand)
                                              |j $ %{} :Expr (:at 1615984833365) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1615984834879) (:by |B1y7Rc-Zz) (:text |:style)
                                                  |j $ %{} :Expr (:at 1615984835144) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1615984835584) (:by |B1y7Rc-Zz) (:text |{})
                                                      |j $ %{} :Expr (:at 1615984836078) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1615984838548) (:by |B1y7Rc-Zz) (:text |:padding)
                                                          |j $ %{} :Leaf (:at 1615984843071) (:by |B1y7Rc-Zz) (:text "|\"8px")
                                          |P $ %{} :Expr (:at 1615983412854) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1615983414003) (:by |B1y7Rc-Zz) (:text |input)
                                              |j $ %{} :Expr (:at 1615983414320) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1615983414651) (:by |B1y7Rc-Zz) (:text |{})
                                                  |j $ %{} :Expr (:at 1615983414866) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1657793994071) (:by |B1y7Rc-Zz) (:text |:class-name)
                                                      |j $ %{} :Leaf (:at 1657793995830) (:by |B1y7Rc-Zz) (:text |css/input)
                                                  |r $ %{} :Expr (:at 1615985094926) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1615985095890) (:by |B1y7Rc-Zz) (:text |:value)
                                                      |T $ %{} :Expr (:at 1615985092894) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1615985093771) (:by |B1y7Rc-Zz) (:text |:demo)
                                                          |j $ %{} :Leaf (:at 1615985100223) (:by |B1y7Rc-Zz) (:text |state)
                                          |R $ %{} :Expr (:at 1615984821815) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1615984822633) (:by |B1y7Rc-Zz) (:text |=<)
                                              |j $ %{} :Leaf (:at 1615984823004) (:by |B1y7Rc-Zz) (:text |8)
                                              |r $ %{} :Leaf (:at 1615984823512) (:by |B1y7Rc-Zz) (:text |nil)
                                          |T $ %{} :Expr (:at 1539195346168) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1539195347113) (:by |root) (:text |<>)
                                              |j $ %{} :Leaf (:at 1615984827345) (:by |B1y7Rc-Zz) (:text "|\"demo page")
                                          |j $ %{} :Expr (:at 1615984262519) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1615984303661) (:by |B1y7Rc-Zz) (:text |pre)
                                              |j $ %{} :Expr (:at 1615984304152) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1615984304642) (:by |B1y7Rc-Zz) (:text |{})
                                                  |L $ %{} :Expr (:at 1646150434536) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1646150435604) (:by |B1y7Rc-Zz) (:text |:style)
                                                      |b $ %{} :Expr (:at 1646150436256) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1646150436589) (:by |B1y7Rc-Zz) (:text |{})
                                                          |b $ %{} :Expr (:at 1646150436881) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1646150442246) (:by |B1y7Rc-Zz) (:text |:line-height)
                                                              |b $ %{} :Leaf (:at 1646150449670) (:by |B1y7Rc-Zz) (:text |1.4)
                                                          |e $ %{} :Expr (:at 1646150479259) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1646150480685) (:by |B1y7Rc-Zz) (:text |:padding)
                                                              |b $ %{} :Leaf (:at 1646150482506) (:by |B1y7Rc-Zz) (:text |4)
                                                          |h $ %{} :Expr (:at 1646150454548) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1646150472578) (:by |B1y7Rc-Zz) (:text |:border)
                                                              |b $ %{} :Expr (:at 1646150459003) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1646150461073) (:by |B1y7Rc-Zz) (:text |str)
                                                                  |b $ %{} :Leaf (:at 1646150477219) (:by |B1y7Rc-Zz) (:text "|\"1px solid #ddd")
                                                  |T $ %{} :Expr (:at 1615984305087) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1615984307552) (:by |B1y7Rc-Zz) (:text |:inner-text)
                                                      |T $ %{} :Expr (:at 1615984265859) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |L $ %{} :Leaf (:at 1615984302121) (:by |B1y7Rc-Zz) (:text |str)
                                                          |j $ %{} :Leaf (:at 1615984270059) (:by |B1y7Rc-Zz) (:text "|\"backend data")
                                                          |r $ %{} :Expr (:at 1615984270835) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1623719461768) (:by |B1y7Rc-Zz) (:text |format-cirru-edn)
                                                              |j $ %{} :Leaf (:at 1615984279552) (:by |B1y7Rc-Zz) (:text |store)
                                  |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:profile)
                                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-profile)
                                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:user)
                                              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |store)
                                          |r $ %{} :Expr (:at 1524070838527) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1524070840507) (:by |root) (:text |:data)
                                              |j $ %{} :Leaf (:at 1524070841286) (:by |root) (:text |router)
                              |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-login)
                                  |j $ %{} :Expr (:at 1584877243021) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1584877243645) (:by |B1y7Rc-Zz) (:text |>>)
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |states)
                                      |j $ %{} :Leaf (:at 1584877245341) (:by |B1y7Rc-Zz) (:text |:login)
                          |w $ %{} :Expr (:at 1524279203814) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1524279211924) (:by |root) (:text |comp-status-color)
                              |j $ %{} :Expr (:at 1524279213788) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1524279214588) (:by |root) (:text |:color)
                                  |j $ %{} :Leaf (:at 1524279215366) (:by |root) (:text |store)
                          |x $ %{} :Expr (:at 1521911488967) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1521911509225) (:by |root) (:text |when)
                              |L $ %{} :Leaf (:at 1521911495407) (:by |root) (:text |dev?)
                              |T $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-inspect)
                                  |j $ %{} :Leaf (:at 1562176377826) (:by |B1y7Rc-Zz) (:text "|\"Store")
                                  |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |store)
                                  |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:bottom)
                                          |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |0)
                                      |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:left)
                                          |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |0)
                                      |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:max-width)
                                          |j $ %{} :Leaf (:at 1562176491493) (:by |B1y7Rc-Zz) (:text "|\"100%")
                          |y $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1529230769433) (:by |root) (:text |comp-messages)
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |get-in)
                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |store)
                                  |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:session)
                                      |r $ %{} :Leaf (:at 1529230765972) (:by |root) (:text |:messages)
                              |n $ %{} :Expr (:at 1529230771518) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1529230771976) (:by |root) (:text |{})
                              |p $ %{} :Expr (:at 1529230772453) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1529230773090) (:by |root) (:text |fn)
                                  |j $ %{} :Expr (:at 1529230773925) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1529230775135) (:by |root) (:text |info)
                                      |j $ %{} :Leaf (:at 1529230778336) (:by |root) (:text |d!)
                                  |r $ %{} :Expr (:at 1529230780551) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1529230781631) (:by |root) (:text |d!)
                                      |j $ %{} :Leaf (:at 1529231458145) (:by |root) (:text |:session/remove-message)
                                      |r $ %{} :Leaf (:at 1529230813335) (:by |root) (:text |info)
                          |yT $ %{} :Expr (:at 1521911502552) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1521911507241) (:by |root) (:text |when)
                              |L $ %{} :Leaf (:at 1521911504664) (:by |root) (:text |dev?)
                              |T $ %{} :Expr (:at 1507828710405) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507828712159) (:by |root) (:text |comp-reel)
                                  |j $ %{} :Expr (:at 1507829101137) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1507830262253) (:by |root) (:text |:reel-length)
                                      |j $ %{} :Leaf (:at 1507829104010) (:by |root) (:text |store)
                                  |r $ %{} :Expr (:at 1507828721052) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1507828722268) (:by |root) (:text |{})
        |comp-offline $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1519314599832) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1521951399872) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |comp-offline)
              |n $ %{} :Expr (:at 1521951400852) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1690018126084) (:by |B1y7Rc-Zz) (:text |mark)
              |r $ %{} :Expr (:at 1519314599832) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1519314599832) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1519314599832) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |:style)
                          |j $ %{} :Expr (:at 1519314599832) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |merge)
                              |j $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |ui/global)
                              |r $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |ui/fullscreen)
                              |v $ %{} :Leaf (:at 1535564672966) (:by |B1y7Rc-Zz) (:text |ui/column-dispersive)
                              |x $ %{} :Expr (:at 1535565529682) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1535565530129) (:by |B1y7Rc-Zz) (:text |{})
                                  |j $ %{} :Expr (:at 1535565530397) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1535565536637) (:by |B1y7Rc-Zz) (:text |:background-color)
                                      |j $ %{} :Expr (:at 1535565541430) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1535565542473) (:by |B1y7Rc-Zz) (:text |:theme)
                                          |j $ %{} :Leaf (:at 1535565546181) (:by |B1y7Rc-Zz) (:text |config/site)
                  |l $ %{} :Expr (:at 1535564983624) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1535565362594) (:by |B1y7Rc-Zz) (:text |div)
                      |j $ %{} :Expr (:at 1535564984947) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1535564985316) (:by |B1y7Rc-Zz) (:text |{})
                          |j $ %{} :Expr (:at 1535564985627) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1535564987644) (:by |B1y7Rc-Zz) (:text |:style)
                              |j $ %{} :Expr (:at 1535565371727) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1535565373172) (:by |B1y7Rc-Zz) (:text |{})
                                  |T $ %{} :Expr (:at 1535564988232) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1535564988883) (:by |B1y7Rc-Zz) (:text |:height)
                                      |j $ %{} :Leaf (:at 1535565472380) (:by |B1y7Rc-Zz) (:text |0)
                  |n $ %{} :Expr (:at 1535564675845) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1535564681122) (:by |B1y7Rc-Zz) (:text |div)
                      |j $ %{} :Expr (:at 1535564681371) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1535564681741) (:by |B1y7Rc-Zz) (:text |{})
                          |j $ %{} :Expr (:at 1535564681981) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1535564682940) (:by |B1y7Rc-Zz) (:text |:style)
                              |j $ %{} :Expr (:at 1535564683257) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1535564683549) (:by |B1y7Rc-Zz) (:text |{})
                                  |j $ %{} :Expr (:at 1535564683815) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1535564692026) (:by |B1y7Rc-Zz) (:text |:background-image)
                                      |j $ %{} :Expr (:at 1535564692507) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1535564693703) (:by |B1y7Rc-Zz) (:text |str)
                                          |j $ %{} :Leaf (:at 1535564698133) (:by |B1y7Rc-Zz) (:text "|\"url(")
                                          |n $ %{} :Expr (:at 1535564699933) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1535564708041) (:by |B1y7Rc-Zz) (:text |:icon)
                                              |j $ %{} :Leaf (:at 1535564775736) (:by |B1y7Rc-Zz) (:text |config/site)
                                          |r $ %{} :Leaf (:at 1535564696349) (:by |B1y7Rc-Zz) (:text "|\")")
                                  |r $ %{} :Expr (:at 1535564726919) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1535564728738) (:by |B1y7Rc-Zz) (:text |:width)
                                      |j $ %{} :Leaf (:at 1535565090611) (:by |B1y7Rc-Zz) (:text |128)
                                  |v $ %{} :Expr (:at 1535564733832) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1535564736588) (:by |B1y7Rc-Zz) (:text |:height)
                                      |j $ %{} :Leaf (:at 1535565093711) (:by |B1y7Rc-Zz) (:text |128)
                                  |x $ %{} :Expr (:at 1535564741439) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1535564745512) (:by |B1y7Rc-Zz) (:text |:background-size)
                                      |j $ %{} :Leaf (:at 1535564749164) (:by |B1y7Rc-Zz) (:text |:contain)
                  |r $ %{} :Expr (:at 1519314599832) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1535565436682) (:by |B1y7Rc-Zz) (:text |div)
                      |j $ %{} :Expr (:at 1519314599832) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1519314599832) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1519314599832) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1519314599832) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |:cursor)
                                      |j $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |:pointer)
                                  |r $ %{} :Expr (:at 1535565239666) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1535565243041) (:by |B1y7Rc-Zz) (:text |:line-height)
                                      |j $ %{} :Leaf (:at 1535565498969) (:by |B1y7Rc-Zz) (:text "|\"32px")
                          |r $ %{} :Expr (:at 1519314599832) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |:on-click)
                              |j $ %{} :Expr (:at 1584871334795) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1584871335398) (:by |B1y7Rc-Zz) (:text |fn)
                                  |L $ %{} :Expr (:at 1584871335614) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1584871336535) (:by |B1y7Rc-Zz) (:text |e)
                                      |j $ %{} :Leaf (:at 1584871337567) (:by |B1y7Rc-Zz) (:text |d!)
                                  |T $ %{} :Expr (:at 1519314599832) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1584871334285) (:by |B1y7Rc-Zz) (:text |d!)
                                      |j $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |:effect/connect)
                                      |r $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |nil)
                      |r $ %{} :Expr (:at 1519314599832) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |<>)
                          |j $ %{} :Expr (:at 1690018128663) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1690018130874) (:by |B1y7Rc-Zz) (:text |tag-match)
                              |L $ %{} :Leaf (:at 1690018132453) (:by |B1y7Rc-Zz) (:text |mark)
                              |P $ %{} :Expr (:at 1690018137059) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1690018149488) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1690018138566) (:by |B1y7Rc-Zz) (:text |:loading)
                                  |b $ %{} :Leaf (:at 1690018143693) (:by |B1y7Rc-Zz) (:text "|\"Loading...")
                              |T $ %{} :Expr (:at 1690018133982) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |D $ %{} :Expr (:at 1690018150980) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1690018136255) (:by |B1y7Rc-Zz) (:text |:offline)
                                  |T $ %{} :Leaf (:at 1707456423929) (:by |B1y7Rc-Zz) (:text "|\"No connection...")
                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:font-family)
                                  |j $ %{} :Leaf (:at 1535565688657) (:by |B1y7Rc-Zz) (:text |ui/font-fancy)
                              |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:font-size)
                                  |j $ %{} :Leaf (:at 1707456451399) (:by |B1y7Rc-Zz) (:text |16)
                              |w $ %{} :Expr (:at 1707456455057) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1707456455880) (:by |B1y7Rc-Zz) (:text |:color)
                                  |b $ %{} :Expr (:at 1707456456550) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1707456456313) (:by |B1y7Rc-Zz) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1707456457107) (:by |B1y7Rc-Zz) (:text |0)
                                      |h $ %{} :Leaf (:at 1707456457318) (:by |B1y7Rc-Zz) (:text |0)
                                      |l $ %{} :Leaf (:at 1707456475105) (:by |B1y7Rc-Zz) (:text |50)
        |comp-status-color $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1524279216692) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1524279218316) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1524279216692) (:by |root) (:text |comp-status-color)
              |r $ %{} :Expr (:at 1524279216692) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1524279220380) (:by |root) (:text |color)
              |v $ %{} :Expr (:at 1524279221052) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1524279221503) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1524279221753) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1524279222145) (:by |root) (:text |{})
                      |b $ %{} :Expr (:at 1657794020225) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657794023247) (:by |B1y7Rc-Zz) (:text |:class-name)
                          |b $ %{} :Leaf (:at 1657794028418) (:by |B1y7Rc-Zz) (:text |css-status-color)
                      |j $ %{} :Expr (:at 1524279222434) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1524279223333) (:by |root) (:text |:style)
                          |j $ %{} :Expr (:at 1533835122554) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1533835132715) (:by |B1y7Rc-Zz) (:text |let)
                              |L $ %{} :Expr (:at 1533835132973) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1533835133406) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1533835134066) (:by |B1y7Rc-Zz) (:text |size)
                                      |j $ %{} :Leaf (:at 1533835156000) (:by |B1y7Rc-Zz) (:text |24)
                              |T $ %{} :Expr (:at 1524279223555) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1524279223903) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1524279224175) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1524279228958) (:by |root) (:text |:width)
                                      |j $ %{} :Leaf (:at 1533835137743) (:by |B1y7Rc-Zz) (:text |size)
                                  |r $ %{} :Expr (:at 1524279231457) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1524279232432) (:by |root) (:text |:height)
                                      |j $ %{} :Leaf (:at 1533835138984) (:by |B1y7Rc-Zz) (:text |size)
                                  |yT $ %{} :Expr (:at 1524279259074) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1524279265891) (:by |root) (:text |:background-color)
                                      |j $ %{} :Leaf (:at 1524279319762) (:by |root) (:text |color)
        |css-status-color $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1657794028769) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1657794030132) (:by |B1y7Rc-Zz) (:text |defstyle)
              |b $ %{} :Leaf (:at 1657794028769) (:by |B1y7Rc-Zz) (:text |css-status-color)
              |h $ %{} :Expr (:at 1657794028769) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1657794032069) (:by |B1y7Rc-Zz) (:text |{})
                  |b $ %{} :Expr (:at 1657794033667) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657794034885) (:by |B1y7Rc-Zz) (:text "|\"$0")
                      |b $ %{} :Expr (:at 1657794035311) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657794035311) (:by |B1y7Rc-Zz) (:text |{})
                          |l $ %{} :Expr (:at 1657794035311) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657794035311) (:by |B1y7Rc-Zz) (:text |:position)
                              |b $ %{} :Leaf (:at 1657794035311) (:by |B1y7Rc-Zz) (:text |:absolute)
                          |o $ %{} :Expr (:at 1657794035311) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657794035311) (:by |B1y7Rc-Zz) (:text |:bottom)
                              |b $ %{} :Leaf (:at 1657794035311) (:by |B1y7Rc-Zz) (:text |60)
                          |q $ %{} :Expr (:at 1657794035311) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657794035311) (:by |B1y7Rc-Zz) (:text |:left)
                              |b $ %{} :Leaf (:at 1657794035311) (:by |B1y7Rc-Zz) (:text |8)
                          |t $ %{} :Expr (:at 1657794035311) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657794035311) (:by |B1y7Rc-Zz) (:text |:border-radius)
                              |b $ %{} :Leaf (:at 1657794035311) (:by |B1y7Rc-Zz) (:text "|\"50%")
                          |u $ %{} :Expr (:at 1657794035311) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657794035311) (:by |B1y7Rc-Zz) (:text |:opacity)
                              |b $ %{} :Leaf (:at 1657794035311) (:by |B1y7Rc-Zz) (:text |0.6)
                          |v $ %{} :Expr (:at 1657794035311) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657794035311) (:by |B1y7Rc-Zz) (:text |:pointer-events)
                              |b $ %{} :Leaf (:at 1657794035311) (:by |B1y7Rc-Zz) (:text |:none)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541010211) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |app.comp.container)
            |v $ %{} :Expr (:at 1500541010211) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1707456468963) (:by |B1y7Rc-Zz) (:text |respo.util.format)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1516547378489) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui)
                |u $ %{} :Expr (:at 1657793896008) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657793897836) (:by |B1y7Rc-Zz) (:text |respo-ui.css)
                    |b $ %{} :Leaf (:at 1657793899889) (:by |B1y7Rc-Zz) (:text |:as)
                    |h $ %{} :Leaf (:at 1657793900557) (:by |B1y7Rc-Zz) (:text |css)
                |x $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1540962164790) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                        |t $ %{} :Leaf (:at 1584877250857) (:by |B1y7Rc-Zz) (:text |>>)
                        |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                        |x $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |span)
                        |y $ %{} :Leaf (:at 1507815955483) (:by |root) (:text |button)
                        |yT $ %{} :Leaf (:at 1615983477070) (:by |B1y7Rc-Zz) (:text |input)
                        |yj $ %{} :Leaf (:at 1615984295300) (:by |B1y7Rc-Zz) (:text |pre)
                |xT $ %{} :Expr (:at 1657794056783) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657794057967) (:by |B1y7Rc-Zz) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1657794059262) (:by |B1y7Rc-Zz) (:text |:refer)
                    |h $ %{} :Expr (:at 1657794059532) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657794061292) (:by |B1y7Rc-Zz) (:text |defstyle)
                |y $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |respo.comp.inspect)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-inspect)
                |yD $ %{} :Expr (:at 1507816109319) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507816117447) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1507816112686) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507816113982) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1507816114704) (:by |root) (:text |=<)
                |yT $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1523120275079) (:by |root) (:text |app.comp.navigation)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1523120276563) (:by |root) (:text |comp-navigation)
                |yj $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |app.comp.profile)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-profile)
                |yr $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |app.comp.login)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-login)
                |yv $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1529230826824) (:by |root) (:text |respo-message.comp.messages)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1529230829559) (:by |root) (:text |comp-messages)
                |yx $ %{} :Expr (:at 1507828725931) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1543253312413) (:by |B1y7Rc-Zz) (:text |cumulo-reel.comp.reel)
                    |r $ %{} :Leaf (:at 1507828731528) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507828731735) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1507828733743) (:by |root) (:text |comp-reel)
                |yy $ %{} :Expr (:at 1521911479054) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1527789167264) (:by |root) (:text |app.config)
                    |r $ %{} :Leaf (:at 1521911483589) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1521911483778) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1521911485489) (:by |root) (:text |dev?)
                |yyj $ %{} :Expr (:at 1529230793085) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1615983436266) (:by |B1y7Rc-Zz) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1529230796499) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1529230797248) (:by |root) (:text |schema)
                |yyr $ %{} :Expr (:at 1535564714854) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1535564718729) (:by |B1y7Rc-Zz) (:text |app.config)
                    |r $ %{} :Leaf (:at 1535564719687) (:by |B1y7Rc-Zz) (:text |:as)
                    |v $ %{} :Leaf (:at 1535564721387) (:by |B1y7Rc-Zz) (:text |config)
    |app.comp.login $ %{} :FileEntry
      :defs $ {}
        |comp-login $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-login)
              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |states)
              |v $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |D $ %{} :Expr (:at 1584877226983) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1584877228943) (:by |B1y7Rc-Zz) (:text |cursor)
                          |j $ %{} :Expr (:at 1584877229143) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1584877231383) (:by |B1y7Rc-Zz) (:text |:cursor)
                              |j $ %{} :Leaf (:at 1584877232198) (:by |B1y7Rc-Zz) (:text |states)
                      |T $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |state)
                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |or)
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:data)
                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |states)
                              |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |initial-state)
                  |r $ %{} :Expr (:at 1519368111046) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1519368111912) (:by |root) (:text |div)
                      |L $ %{} :Expr (:at 1519368112156) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519368113787) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1519368114295) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657794352870) (:by |B1y7Rc-Zz) (:text |:class-name)
                              |j $ %{} :Expr (:at 1519368119982) (:by |root)
                                :data $ {}
                                  |5 $ %{} :Leaf (:at 1657794355602) (:by |B1y7Rc-Zz) (:text |str-spaced)
                                  |D $ %{} :Leaf (:at 1657794357301) (:by |B1y7Rc-Zz) (:text |css/flex)
                                  |T $ %{} :Leaf (:at 1657794358896) (:by |B1y7Rc-Zz) (:text |css/center)
                      |T $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                  |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |input)
                                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:placeholder)
                                              |j $ %{} :Leaf (:at 1562176475172) (:by |B1y7Rc-Zz) (:text "|\"Username")
                                          |n $ %{} :Expr (:at 1657794388480) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1657794388480) (:by |B1y7Rc-Zz) (:text |:class-name)
                                              |b $ %{} :Leaf (:at 1657794388480) (:by |B1y7Rc-Zz) (:text |css/input)
                                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:value)
                                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:username)
                                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |state)
                                          |x $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1514302367311) (:by |root) (:text |:on-input)
                                              |j $ %{} :Expr (:at 1584877193587) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1584877193587) (:by |B1y7Rc-Zz) (:text |fn)
                                                  |j $ %{} :Expr (:at 1584877193587) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1584877193587) (:by |B1y7Rc-Zz) (:text |e)
                                                      |j $ %{} :Leaf (:at 1584877198070) (:by |B1y7Rc-Zz) (:text |d!)
                                                  |r $ %{} :Expr (:at 1584877193587) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1584877199765) (:by |B1y7Rc-Zz) (:text |d!)
                                                      |b $ %{} :Leaf (:at 1584877203771) (:by |B1y7Rc-Zz) (:text |cursor)
                                                      |j $ %{} :Expr (:at 1584877193587) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1584877193587) (:by |B1y7Rc-Zz) (:text |assoc)
                                                          |j $ %{} :Leaf (:at 1584877193587) (:by |B1y7Rc-Zz) (:text |state)
                                                          |r $ %{} :Leaf (:at 1584877206280) (:by |B1y7Rc-Zz) (:text |:username)
                                                          |v $ %{} :Expr (:at 1584877193587) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1584877193587) (:by |B1y7Rc-Zz) (:text |:value)
                                                              |j $ %{} :Leaf (:at 1584877193587) (:by |B1y7Rc-Zz) (:text |e)
                              |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |=<)
                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |nil)
                                  |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |8)
                              |x $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                  |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |input)
                                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:placeholder)
                                              |j $ %{} :Leaf (:at 1562176476967) (:by |B1y7Rc-Zz) (:text "|\"Password")
                                          |n $ %{} :Expr (:at 1657794395642) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1657794395642) (:by |B1y7Rc-Zz) (:text |:class-name)
                                              |b $ %{} :Leaf (:at 1657794395642) (:by |B1y7Rc-Zz) (:text |css/input)
                                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:value)
                                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:password)
                                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |state)
                                          |x $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1514302370752) (:by |root) (:text |:on-input)
                                              |j $ %{} :Expr (:at 1584877208805) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1584877208805) (:by |B1y7Rc-Zz) (:text |fn)
                                                  |j $ %{} :Expr (:at 1584877208805) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1584877208805) (:by |B1y7Rc-Zz) (:text |e)
                                                      |j $ %{} :Leaf (:at 1584877208805) (:by |B1y7Rc-Zz) (:text |d!)
                                                  |r $ %{} :Expr (:at 1584877208805) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1584877208805) (:by |B1y7Rc-Zz) (:text |d!)
                                                      |j $ %{} :Leaf (:at 1584877208805) (:by |B1y7Rc-Zz) (:text |cursor)
                                                      |r $ %{} :Expr (:at 1584877208805) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1584877208805) (:by |B1y7Rc-Zz) (:text |assoc)
                                                          |j $ %{} :Leaf (:at 1584877208805) (:by |B1y7Rc-Zz) (:text |state)
                                                          |r $ %{} :Leaf (:at 1584877211233) (:by |B1y7Rc-Zz) (:text |:password)
                                                          |v $ %{} :Expr (:at 1584877208805) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1584877208805) (:by |B1y7Rc-Zz) (:text |:value)
                                                              |j $ %{} :Leaf (:at 1584877208805) (:by |B1y7Rc-Zz) (:text |e)
                          |v $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |=<)
                              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |nil)
                              |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |8)
                          |x $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:style)
                                      |j $ %{} :Expr (:at 1519368067092) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1519368067501) (:by |root) (:text |{})
                                          |j $ %{} :Expr (:at 1519368135916) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1519368141461) (:by |root) (:text |:text-align)
                                              |j $ %{} :Leaf (:at 1519368142240) (:by |root) (:text |:right)
                              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1519367924372) (:by |root) (:text |span)
                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:inner-text)
                                          |j $ %{} :Leaf (:at 1562176479429) (:by |B1y7Rc-Zz) (:text "|\"Sign up")
                                      |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1657794405576) (:by |B1y7Rc-Zz) (:text |:class-name)
                                          |j $ %{} :Leaf (:at 1657794407569) (:by |B1y7Rc-Zz) (:text |css/link)
                                      |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1514302375364) (:by |root) (:text |:on-click)
                                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |on-submit)
                                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:username)
                                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |state)
                                              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:password)
                                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |state)
                                              |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |true)
                              |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |=<)
                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |8)
                                  |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |nil)
                              |x $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1519367939048) (:by |root) (:text |span)
                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:inner-text)
                                          |j $ %{} :Leaf (:at 1562176481296) (:by |B1y7Rc-Zz) (:text "|\"Log in")
                                      |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1657794410258) (:by |B1y7Rc-Zz) (:text |:class-name)
                                          |j $ %{} :Leaf (:at 1657794414771) (:by |B1y7Rc-Zz) (:text |css/link)
                                      |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1514302381488) (:by |root) (:text |:on-click)
                                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |on-submit)
                                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:username)
                                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |state)
                                              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:password)
                                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |state)
                                              |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |false)
        |initial-state $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |initial-state)
              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:username)
                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text "|\"")
                  |r $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:password)
                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text "|\"")
        |on-submit $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |on-submit)
              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |username)
                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |password)
                  |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |signup?)
              |v $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |fn)
                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |e)
                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |dispatch!)
                  |r $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |dispatch!)
                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |if)
                          |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |signup?)
                          |r $ %{} :Expr (:at 1688410570378) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1688410571862) (:by |B1y7Rc-Zz) (:text |::)
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:user/sign-up)
                              |b $ %{} :Leaf (:at 1688410574284) (:by |B1y7Rc-Zz) (:text |username)
                              |h $ %{} :Leaf (:at 1688410575752) (:by |B1y7Rc-Zz) (:text |password)
                          |v $ %{} :Expr (:at 1688410577132) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1688410577861) (:by |B1y7Rc-Zz) (:text |::)
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:user/log-in)
                              |b $ %{} :Leaf (:at 1688410580067) (:by |B1y7Rc-Zz) (:text |username)
                              |h $ %{} :Leaf (:at 1688410581270) (:by |B1y7Rc-Zz) (:text |password)
                  |v $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636548629482) (:by |B1y7Rc-Zz) (:text |.!setItem)
                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |js/localStorage)
                      |r $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:storage-key)
                          |j $ %{} :Leaf (:at 1527788909281) (:by |root) (:text |config/site)
                      |v $ %{} :Expr (:at 1614525647069) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1623719452605) (:by |B1y7Rc-Zz) (:text |format-cirru-edn)
                          |T $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |username)
                              |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |password)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541010211) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1510936619134) (:by |root) (:text |app.comp.login)
            |v $ %{} :Expr (:at 1500541010211) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1540962172090) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                        |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                        |x $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |input)
                        |y $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |button)
                        |yT $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |span)
                |n $ %{} :Expr (:at 1657794361347) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657794362420) (:by |B1y7Rc-Zz) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1657794363272) (:by |B1y7Rc-Zz) (:text |:refer)
                    |h $ %{} :Expr (:at 1657794363536) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657794365865) (:by |B1y7Rc-Zz) (:text |defstyle)
                |r $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |=<)
                |v $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |respo.comp.inspect)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-inspect)
                |x $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1516547410331) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui)
                |xT $ %{} :Expr (:at 1657794367648) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657794369271) (:by |B1y7Rc-Zz) (:text |respo-ui.css)
                    |b $ %{} :Leaf (:at 1657794369677) (:by |B1y7Rc-Zz) (:text |:as)
                    |h $ %{} :Leaf (:at 1657794370183) (:by |B1y7Rc-Zz) (:text |css)
                |y $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |schema)
                |yj $ %{} :Expr (:at 1527788911549) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1527788913217) (:by |root) (:text |app.config)
                    |r $ %{} :Leaf (:at 1527788914516) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1527788915188) (:by |root) (:text |config)
    |app.comp.navigation $ %{} :FileEntry
      :defs $ {}
        |comp-navigation $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-navigation)
              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |logged-in?)
                  |j $ %{} :Leaf (:at 1523120365880) (:by |root) (:text |count-members)
              |v $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657793929223) (:by |B1y7Rc-Zz) (:text |:class-name)
                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657793935666) (:by |B1y7Rc-Zz) (:text |str-spaced)
                              |j $ %{} :Leaf (:at 1657793937663) (:by |B1y7Rc-Zz) (:text |css/row-center)
                              |n $ %{} :Leaf (:at 1657793954811) (:by |B1y7Rc-Zz) (:text |css-navigation)
                  |r $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1514302328636) (:by |root) (:text |:on-click)
                              |j $ %{} :Expr (:at 1584874408320) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1584874408856) (:by |B1y7Rc-Zz) (:text |fn)
                                  |L $ %{} :Expr (:at 1584874409139) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1584874409848) (:by |B1y7Rc-Zz) (:text |e)
                                      |j $ %{} :Leaf (:at 1584874410391) (:by |B1y7Rc-Zz) (:text |d!)
                                  |T $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1584874407853) (:by |B1y7Rc-Zz) (:text |d!)
                                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:router/change)
                                      |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:name)
                                              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:home)
                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:cursor)
                                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:pointer)
                      |r $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                          |j $ %{} :Expr (:at 1707456417144) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707456417144) (:by |B1y7Rc-Zz) (:text |:title)
                              |b $ %{} :Leaf (:at 1707456417144) (:by |B1y7Rc-Zz) (:text |config/site)
                          |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |nil)
                  |v $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:cursor)
                                      |j $ %{} :Leaf (:at 1562176402113) (:by |B1y7Rc-Zz) (:text "|\"pointer")
                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1514302332444) (:by |root) (:text |:on-click)
                              |j $ %{} :Expr (:at 1584874413029) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1584874414283) (:by |B1y7Rc-Zz) (:text |fn)
                                  |L $ %{} :Expr (:at 1584874414551) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1584874414785) (:by |B1y7Rc-Zz) (:text |e)
                                      |j $ %{} :Leaf (:at 1584874415332) (:by |B1y7Rc-Zz) (:text |d!)
                                  |T $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1584874412408) (:by |B1y7Rc-Zz) (:text |d!)
                                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:router/change)
                                      |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:name)
                                              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:profile)
                      |r $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |if)
                              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |logged-in?)
                              |r $ %{} :Leaf (:at 1562176400207) (:by |B1y7Rc-Zz) (:text "|\"Me")
                              |v $ %{} :Leaf (:at 1562176397757) (:by |B1y7Rc-Zz) (:text "|\"Guest")
                      |v $ %{} :Expr (:at 1523120369216) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1523120369974) (:by |root) (:text |=<)
                          |j $ %{} :Leaf (:at 1523120371053) (:by |root) (:text |8)
                          |r $ %{} :Leaf (:at 1523120371555) (:by |root) (:text |nil)
                      |x $ %{} :Expr (:at 1523120371997) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1523120372630) (:by |root) (:text |<>)
                          |j $ %{} :Leaf (:at 1523120373023) (:by |root) (:text |count-members)
        |css-navigation $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1657793955078) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1657793956356) (:by |B1y7Rc-Zz) (:text |defstyle)
              |b $ %{} :Leaf (:at 1657793955078) (:by |B1y7Rc-Zz) (:text |css-navigation)
              |h $ %{} :Expr (:at 1657793955078) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1657793959429) (:by |B1y7Rc-Zz) (:text |{})
                  |b $ %{} :Expr (:at 1657793960364) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657793961366) (:by |B1y7Rc-Zz) (:text "|\"$0")
                      |b $ %{} :Expr (:at 1657793961792) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657793961792) (:by |B1y7Rc-Zz) (:text |{})
                          |b $ %{} :Expr (:at 1657793961792) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657793961792) (:by |B1y7Rc-Zz) (:text |:height)
                              |b $ %{} :Leaf (:at 1657793961792) (:by |B1y7Rc-Zz) (:text |48)
                          |h $ %{} :Expr (:at 1657793961792) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657793961792) (:by |B1y7Rc-Zz) (:text |:justify-content)
                              |b $ %{} :Leaf (:at 1657793961792) (:by |B1y7Rc-Zz) (:text |:space-between)
                          |l $ %{} :Expr (:at 1657793961792) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657793961792) (:by |B1y7Rc-Zz) (:text |:padding)
                              |b $ %{} :Leaf (:at 1657793961792) (:by |B1y7Rc-Zz) (:text "|\"0 16px")
                          |o $ %{} :Expr (:at 1657793961792) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657793961792) (:by |B1y7Rc-Zz) (:text |:font-size)
                              |b $ %{} :Leaf (:at 1657793961792) (:by |B1y7Rc-Zz) (:text |16)
                          |q $ %{} :Expr (:at 1657793961792) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657793961792) (:by |B1y7Rc-Zz) (:text |:border-bottom)
                              |b $ %{} :Expr (:at 1657793961792) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657793961792) (:by |B1y7Rc-Zz) (:text |str)
                                  |b $ %{} :Leaf (:at 1657793961792) (:by |B1y7Rc-Zz) (:text "|\"1px solid ")
                                  |h $ %{} :Expr (:at 1657793961792) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657793961792) (:by |B1y7Rc-Zz) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1657793961792) (:by |B1y7Rc-Zz) (:text |0)
                                      |h $ %{} :Leaf (:at 1657793961792) (:by |B1y7Rc-Zz) (:text |0)
                                      |l $ %{} :Leaf (:at 1657793961792) (:by |B1y7Rc-Zz) (:text |0)
                                      |o $ %{} :Leaf (:at 1657793961792) (:by |B1y7Rc-Zz) (:text |0.1)
                          |s $ %{} :Expr (:at 1657793961792) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657793961792) (:by |B1y7Rc-Zz) (:text |:font-family)
                              |b $ %{} :Leaf (:at 1657793961792) (:by |B1y7Rc-Zz) (:text |ui/font-fancy)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541010211) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |app.comp.navigation)
            |v $ %{} :Expr (:at 1500541010211) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1614525468021) (:by |B1y7Rc-Zz) (:text |respo.util.format)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |hsl)
                |n $ %{} :Expr (:at 1657793939708) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657793943191) (:by |B1y7Rc-Zz) (:text |respo-ui.css)
                    |b $ %{} :Leaf (:at 1657793943610) (:by |B1y7Rc-Zz) (:text |:as)
                    |h $ %{} :Leaf (:at 1657793944242) (:by |B1y7Rc-Zz) (:text |css)
                |r $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1516547394445) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui)
                |t $ %{} :Expr (:at 1657793964213) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657793966740) (:by |B1y7Rc-Zz) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1657793968647) (:by |B1y7Rc-Zz) (:text |:refer)
                    |h $ %{} :Expr (:at 1657793968883) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657793970019) (:by |B1y7Rc-Zz) (:text |defstyle)
                |w $ %{} :Expr (:at 1523120376505) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1523120379036) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1523120382218) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1523120382545) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1523120383255) (:by |root) (:text |=<)
                |x $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1540962179719) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                        |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |span)
                        |x $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                |y $ %{} :Expr (:at 1536561755369) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1536561755369) (:by |B1y7Rc-Zz) (:text |app.config)
                    |r $ %{} :Leaf (:at 1536561758845) (:by |B1y7Rc-Zz) (:text |:as)
                    |v $ %{} :Leaf (:at 1536561761903) (:by |B1y7Rc-Zz) (:text |config)
    |app.comp.profile $ %{} :FileEntry
      :defs $ {}
        |comp-profile $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-profile)
              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |user)
                  |j $ %{} :Leaf (:at 1524070827396) (:by |root) (:text |members)
              |v $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                      |b $ %{} :Expr (:at 1657794108827) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657794111362) (:by |B1y7Rc-Zz) (:text |:class-name)
                          |b $ %{} :Leaf (:at 1657794113170) (:by |B1y7Rc-Zz) (:text |css/flex)
                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:style)
                          |j $ %{} :Expr (:at 1519314674864) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1519314675207) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1519314675496) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1519314677667) (:by |root) (:text |:padding)
                                  |j $ %{} :Leaf (:at 1519314678341) (:by |root) (:text |16)
                  |r $ %{} :Expr (:at 1524070753023) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1524070753742) (:by |root) (:text |div)
                      |L $ %{} :Expr (:at 1524070753977) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1524070754337) (:by |root) (:text |{})
                          |b $ %{} :Expr (:at 1657794150802) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657794153087) (:by |B1y7Rc-Zz) (:text |:class-name)
                              |b $ %{} :Leaf (:at 1657794156233) (:by |B1y7Rc-Zz) (:text |css/font-fancy)
                          |j $ %{} :Expr (:at 1524070764197) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1524070764960) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1524070765167) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1524070765499) (:by |root) (:text |{})
                                  |r $ %{} :Expr (:at 1524070772863) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1524070774437) (:by |root) (:text |:font-size)
                                      |j $ %{} :Leaf (:at 1524070786249) (:by |root) (:text |32)
                                  |v $ %{} :Expr (:at 1524070778614) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1524070781489) (:by |root) (:text |:font-weight)
                                      |j $ %{} :Leaf (:at 1524070782585) (:by |root) (:text |100)
                      |T $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |str)
                              |j $ %{} :Leaf (:at 1562176409054) (:by |B1y7Rc-Zz) (:text "|\"Hello! ")
                              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:name)
                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |user)
                  |t $ %{} :Expr (:at 1524070801446) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1524070803450) (:by |root) (:text |=<)
                      |j $ %{} :Leaf (:at 1524070804372) (:by |root) (:text |nil)
                      |r $ %{} :Leaf (:at 1524070805591) (:by |root) (:text |16)
                  |u $ %{} :Expr (:at 1524070806586) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1524070807601) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1524070807801) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1524070808172) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1524070882494) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657794146595) (:by |B1y7Rc-Zz) (:text |:class-name)
                              |j $ %{} :Leaf (:at 1657794148018) (:by |B1y7Rc-Zz) (:text |css/row)
                      |r $ %{} :Expr (:at 1524070808914) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1524070810352) (:by |root) (:text |<>)
                          |j $ %{} :Leaf (:at 1524070906296) (:by |root) (:text "|\"Members:")
                      |t $ %{} :Expr (:at 1524070907095) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1524070907693) (:by |root) (:text |=<)
                          |j $ %{} :Leaf (:at 1524071002316) (:by |root) (:text |8)
                          |r $ %{} :Leaf (:at 1524070908955) (:by |root) (:text |nil)
                      |v $ %{} :Expr (:at 1524070813822) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1524070815507) (:by |root) (:text |list->)
                          |j $ %{} :Expr (:at 1524070815884) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1524070816388) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1524070882494) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657794141160) (:by |B1y7Rc-Zz) (:text |:class-name)
                                  |j $ %{} :Leaf (:at 1657794143967) (:by |B1y7Rc-Zz) (:text |css/row)
                          |r $ %{} :Expr (:at 1524070817648) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1619671796147) (:by |B1y7Rc-Zz) (:text |->)
                              |j $ %{} :Leaf (:at 1524070823331) (:by |root) (:text |members)
                              |n $ %{} :Expr (:at 1614611343411) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1624862842155) (:by |B1y7Rc-Zz) (:text |.to-list)
                              |r $ %{} :Expr (:at 1524070849620) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1524070853516) (:by |root) (:text |map)
                                  |j $ %{} :Expr (:at 1524070854323) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1524070854836) (:by |root) (:text |fn)
                                      |j $ %{} :Expr (:at 1524070855268) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1614525491436) (:by |B1y7Rc-Zz) (:text |pair)
                                      |r $ %{} :Expr (:at 1614525482850) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1614525484271) (:by |B1y7Rc-Zz) (:text |let[])
                                          |L $ %{} :Expr (:at 1614525484629) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1614525486134) (:by |B1y7Rc-Zz) (:text |k)
                                              |j $ %{} :Leaf (:at 1614525487206) (:by |B1y7Rc-Zz) (:text |username)
                                          |P $ %{} :Leaf (:at 1614525488905) (:by |B1y7Rc-Zz) (:text |pair)
                                          |T $ %{} :Expr (:at 1524070862172) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1524070862624) (:by |root) (:text |[])
                                              |j $ %{} :Leaf (:at 1524070863576) (:by |root) (:text |k)
                                              |r $ %{} :Expr (:at 1524070863870) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1524070935603) (:by |root) (:text |div)
                                                  |b $ %{} :Expr (:at 1524070935915) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1524070936321) (:by |root) (:text |{})
                                                      |j $ %{} :Expr (:at 1524070941378) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1657794282530) (:by |B1y7Rc-Zz) (:text |:class-name)
                                                          |b $ %{} :Leaf (:at 1657794188346) (:by |B1y7Rc-Zz) (:text |css-member-label)
                                                  |j $ %{} :Expr (:at 1524070937486) (:by |root)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1524070939626) (:by |root) (:text |<>)
                                                      |T $ %{} :Leaf (:at 1524070866665) (:by |root) (:text |username)
                  |v $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |=<)
                      |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |nil)
                      |v $ %{} :Leaf (:at 1524070799028) (:by |root) (:text |48)
                  |x $ %{} :Expr (:at 1524070749088) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1524070749878) (:by |root) (:text |div)
                      |L $ %{} :Expr (:at 1524070750119) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1524070750478) (:by |root) (:text |{})
                      |P $ %{} :Expr (:at 1536750075330) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1536750077847) (:by |B1y7Rc-Zz) (:text |button)
                          |j $ %{} :Expr (:at 1536750078116) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1536750084550) (:by |B1y7Rc-Zz) (:text |{})
                              |j $ %{} :Expr (:at 1536750086649) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657794219280) (:by |B1y7Rc-Zz) (:text |:class-name)
                                  |j $ %{} :Leaf (:at 1657794221767) (:by |B1y7Rc-Zz) (:text |css/button)
                              |r $ %{} :Expr (:at 1536750146336) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1536750146336) (:by |B1y7Rc-Zz) (:text |:on-click)
                                  |j $ %{} :Expr (:at 1536750146336) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1536750146336) (:by |B1y7Rc-Zz) (:text |fn)
                                      |j $ %{} :Expr (:at 1536750146336) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1536750146336) (:by |B1y7Rc-Zz) (:text |e)
                                          |j $ %{} :Leaf (:at 1536750196752) (:by |B1y7Rc-Zz) (:text |d!)
                                      |r $ %{} :Expr (:at 1536750149343) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |j $ %{} :Leaf (:at 1562176422166) (:by |B1y7Rc-Zz) (:text |js/location.replace)
                                          |r $ %{} :Expr (:at 1536750157447) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1536750157996) (:by |B1y7Rc-Zz) (:text |str)
                                              |j $ %{} :Leaf (:at 1536947568308) (:by |root) (:text |js/location.origin)
                                              |r $ %{} :Leaf (:at 1536947560142) (:by |root) (:text "|\"?time=")
                                              |v $ %{} :Expr (:at 1536750183293) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |j $ %{} :Leaf (:at 1636646509823) (:by |B1y7Rc-Zz) (:text |js/Date.now)
                          |r $ %{} :Expr (:at 1536750090761) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1536750091205) (:by |B1y7Rc-Zz) (:text |<>)
                              |j $ %{} :Leaf (:at 1536750096637) (:by |B1y7Rc-Zz) (:text "|\"Refresh")
                      |R $ %{} :Expr (:at 1536750643074) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1536750643562) (:by |B1y7Rc-Zz) (:text |=<)
                          |j $ %{} :Leaf (:at 1536750644286) (:by |B1y7Rc-Zz) (:text |8)
                          |r $ %{} :Leaf (:at 1536750644793) (:by |B1y7Rc-Zz) (:text |nil)
                      |T $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1529343433304) (:by |root) (:text |button)
                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                              |b $ %{} :Expr (:at 1657794206872) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657794209648) (:by |B1y7Rc-Zz) (:text |:class-name)
                                  |b $ %{} :Leaf (:at 1657794213181) (:by |B1y7Rc-Zz) (:text |css/button)
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:style)
                                  |b $ %{} :Expr (:at 1529343455186) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1529343455629) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1529343457115) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1529343457898) (:by |root) (:text |:color)
                                          |j $ %{} :Leaf (:at 1529343458855) (:by |root) (:text |:red)
                                      |r $ %{} :Expr (:at 1529343459158) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1529343463728) (:by |root) (:text |:border-color)
                                          |j $ %{} :Leaf (:at 1529343464475) (:by |root) (:text |:red)
                              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1514302350497) (:by |root) (:text |:on-click)
                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1521951456454) (:by |root) (:text |fn)
                                      |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |e)
                                          |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |dispatch!)
                                      |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |dispatch!)
                                          |j $ %{} :Expr (:at 1688410739149) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1688410739827) (:by |B1y7Rc-Zz) (:text |::)
                                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:user/log-out)
                                      |x $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |j $ %{} :Leaf (:at 1688410744369) (:by |B1y7Rc-Zz) (:text |js/localStorage.removeItem)
                                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:storage-key)
                                              |j $ %{} :Leaf (:at 1527788933957) (:by |root) (:text |config/site)
                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                              |r $ %{} :Leaf (:at 1536750140051) (:by |B1y7Rc-Zz) (:text "|\"Log out")
        |css-member-label $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1657794188663) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1657794190004) (:by |B1y7Rc-Zz) (:text |defstyle)
              |b $ %{} :Leaf (:at 1657794188663) (:by |B1y7Rc-Zz) (:text |css-member-label)
              |h $ %{} :Expr (:at 1657794188663) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1657794191046) (:by |B1y7Rc-Zz) (:text |{})
                  |b $ %{} :Expr (:at 1657794191331) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657794193793) (:by |B1y7Rc-Zz) (:text "|\"$0")
                      |b $ %{} :Expr (:at 1657794194769) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657794194769) (:by |B1y7Rc-Zz) (:text |{})
                          |b $ %{} :Expr (:at 1657794194769) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657794194769) (:by |B1y7Rc-Zz) (:text |:padding)
                              |b $ %{} :Leaf (:at 1657794194769) (:by |B1y7Rc-Zz) (:text "|\"0 8px")
                          |h $ %{} :Expr (:at 1657794194769) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657794194769) (:by |B1y7Rc-Zz) (:text |:border)
                              |b $ %{} :Expr (:at 1657794194769) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657794194769) (:by |B1y7Rc-Zz) (:text |str)
                                  |b $ %{} :Leaf (:at 1657794194769) (:by |B1y7Rc-Zz) (:text "|\"1px solid ")
                                  |h $ %{} :Expr (:at 1657794194769) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657794194769) (:by |B1y7Rc-Zz) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1657794194769) (:by |B1y7Rc-Zz) (:text |0)
                                      |h $ %{} :Leaf (:at 1657794194769) (:by |B1y7Rc-Zz) (:text |0)
                                      |l $ %{} :Leaf (:at 1657794194769) (:by |B1y7Rc-Zz) (:text |80)
                          |l $ %{} :Expr (:at 1657794194769) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657794194769) (:by |B1y7Rc-Zz) (:text |:border-radius)
                              |b $ %{} :Leaf (:at 1657794194769) (:by |B1y7Rc-Zz) (:text "|\"16px")
                          |o $ %{} :Expr (:at 1657794194769) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657794194769) (:by |B1y7Rc-Zz) (:text |:margin)
                              |b $ %{} :Leaf (:at 1657794194769) (:by |B1y7Rc-Zz) (:text "|\"0 4px")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541010211) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |app.comp.profile)
            |v $ %{} :Expr (:at 1500541010211) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1614525505014) (:by |B1y7Rc-Zz) (:text |respo.util.format)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |schema)
                |v $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1516547419785) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui)
                |w $ %{} :Expr (:at 1657794119284) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657794122700) (:by |B1y7Rc-Zz) (:text |respo-ui.css)
                    |b $ %{} :Leaf (:at 1657794123054) (:by |B1y7Rc-Zz) (:text |:as)
                    |h $ %{} :Leaf (:at 1657794123606) (:by |B1y7Rc-Zz) (:text |css)
                |y $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1540962184094) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
                        |n $ %{} :Leaf (:at 1524070875244) (:by |root) (:text |list->)
                        |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                        |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |span)
                        |x $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                        |y $ %{} :Leaf (:at 1529343437918) (:by |root) (:text |button)
                |yD $ %{} :Expr (:at 1657794124478) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657794126663) (:by |B1y7Rc-Zz) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1657794129542) (:by |B1y7Rc-Zz) (:text |:refer)
                    |h $ %{} :Expr (:at 1657794129736) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657794131811) (:by |B1y7Rc-Zz) (:text |defstyle)
                |yT $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |=<)
                |yj $ %{} :Expr (:at 1527788936196) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1527788937835) (:by |root) (:text |app.config)
                    |r $ %{} :Leaf (:at 1527788938747) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1527788939786) (:by |root) (:text |config)
    |app.config $ %{} :FileEntry
      :defs $ {}
        |dev? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1521911283590) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1521911286581) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1521911283590) (:by |root) (:text |dev?)
              |r $ %{} :Expr (:at 1624108446316) (:by |B1y7Rc-Zz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1624108446816) (:by |B1y7Rc-Zz) (:text |=)
                  |L $ %{} :Leaf (:at 1624108449235) (:by |B1y7Rc-Zz) (:text "|\"dev")
                  |T $ %{} :Expr (:at 1544871605820) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1624108441731) (:by |B1y7Rc-Zz) (:text |get-env)
                      |b $ %{} :Leaf (:at 1624108486467) (:by |B1y7Rc-Zz) (:text "|\"mode")
                      |h $ %{} :Leaf (:at 1657793841444) (:by |B1y7Rc-Zz) (:text "|\"release")
        |site $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |site)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:port)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |5021)
                  |t $ %{} :Expr (:at 1527867502467) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1527867504737) (:by |root) (:text |:title)
                      |j $ %{} :Leaf (:at 1646152732400) (:by |B1y7Rc-Zz) (:text "|\"Calcium")
                  |u $ %{} :Expr (:at 1527867511986) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1527867512819) (:by |root) (:text |:icon)
                      |j $ %{} :Leaf (:at 1646152761476) (:by |B1y7Rc-Zz) (:text "|\"https://cdn.tiye.me/logo/cumulo.png")
                  |yr $ %{} :Expr (:at 1535565550489) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1535565552318) (:by |B1y7Rc-Zz) (:text |:theme)
                      |j $ %{} :Leaf (:at 1535565554474) (:by |B1y7Rc-Zz) (:text "|\"#eeeeff")
                  |yv $ %{} :Expr (:at 1544855275779) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1544855275779) (:by |B1y7Rc-Zz) (:text |:storage-key)
                      |j $ %{} :Leaf (:at 1636635875067) (:by |B1y7Rc-Zz) (:text "|\"calcium-storage")
                  |yx $ %{} :Expr (:at 1544855286260) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1544855289453) (:by |B1y7Rc-Zz) (:text |:storage-file)
                      |j $ %{} :Leaf (:at 1636483601723) (:by |B1y7Rc-Zz) (:text "|\"storage.cirru")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1527788708227) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1527788708227) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1527788708227) (:by |root) (:text |app.config)
    |app.schema $ %{} :FileEntry
      :defs $ {}
        |database $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |database)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:sessions)
                      |j $ %{} :Expr (:at 1538886498428) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1646980024753) (:by |B1y7Rc-Zz) (:text |noted)
                          |L $ %{} :Leaf (:at 1538886500387) (:by |root) (:text |session)
                          |T $ %{} :Expr (:at 1500541255553) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:users)
                      |j $ %{} :Expr (:at 1538886501540) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1646980026532) (:by |B1y7Rc-Zz) (:text |noted)
                          |L $ %{} :Leaf (:at 1538886502625) (:by |root) (:text |user)
                          |T $ %{} :Expr (:at 1500541255553) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
        |router $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |router)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:name)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:title)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |v $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:data)
                      |j $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                  |x $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:router)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
        |session $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:user-id)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:id)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |v $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:nickname)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |x $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:router)
                      |j $ %{} :Expr (:at 1538886507054) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1646980021735) (:by |B1y7Rc-Zz) (:text |noted)
                          |L $ %{} :Leaf (:at 1538886508475) (:by |root) (:text |router)
                          |T $ %{} :Expr (:at 1500541255553) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1500541255553) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:name)
                                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:home)
                              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:data)
                                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                              |v $ %{} :Expr (:at 1500541255553) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:router)
                                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |y $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1529230759501) (:by |root) (:text |:messages)
                      |j $ %{} :Expr (:at 1529230760396) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1529230760716) (:by |root) (:text |{})
        |user $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |user)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:name)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:id)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |v $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:nickname)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |x $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:avatar)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |y $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:password)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541255553) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.schema)
    |app.server $ %{} :FileEntry
      :defs $ {}
        |*client-caches $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1614610850508) (:by |B1y7Rc-Zz) (:text |defatom)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |*client-caches)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
        |*initial-db $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1614526157477) (:by |B1y7Rc-Zz) (:text |defatom)
              |j $ %{} :Leaf (:at 1614526164437) (:by |B1y7Rc-Zz) (:text |*initial-db)
              |n $ %{} :Expr (:at 1635161485682) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1635161487678) (:by |B1y7Rc-Zz) (:text |if)
                  |j $ %{} :Expr (:at 1635161490278) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1635161490076) (:by |B1y7Rc-Zz) (:text |path-exists?)
                      |j $ %{} :Expr (:at 1636481413303) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1636481415411) (:by |B1y7Rc-Zz) (:text |w-log)
                          |T $ %{} :Leaf (:at 1635161492983) (:by |B1y7Rc-Zz) (:text |storage-file)
                  |r $ %{} :Expr (:at 1635161521659) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1635161522203) (:by |B1y7Rc-Zz) (:text |do)
                      |L $ %{} :Expr (:at 1635161525007) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1635161525007) (:by |B1y7Rc-Zz) (:text |println)
                          |j $ %{} :Leaf (:at 1635161525007) (:by |B1y7Rc-Zz) (:text "|\"Found local EDN data")
                      |T $ %{} :Expr (:at 1635161496041) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1635161496893) (:by |B1y7Rc-Zz) (:text |merge)
                          |j $ %{} :Leaf (:at 1635161499853) (:by |B1y7Rc-Zz) (:text |schema/database)
                          |r $ %{} :Expr (:at 1635161502420) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1635161504397) (:by |B1y7Rc-Zz) (:text |parse-cirru-edn)
                              |j $ %{} :Expr (:at 1635161509804) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1635161511378) (:by |B1y7Rc-Zz) (:text |read-file)
                                  |T $ %{} :Leaf (:at 1635161506680) (:by |B1y7Rc-Zz) (:text |storage-file)
                  |v $ %{} :Expr (:at 1635161526854) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1635161528311) (:by |B1y7Rc-Zz) (:text |do)
                      |L $ %{} :Expr (:at 1635161533773) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1635161533773) (:by |B1y7Rc-Zz) (:text |println)
                          |j $ %{} :Leaf (:at 1635161533773) (:by |B1y7Rc-Zz) (:text "|\"Found no data")
                      |T $ %{} :Leaf (:at 1635161516726) (:by |B1y7Rc-Zz) (:text |schema/database)
        |*reader-reel $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1614526704558) (:by |B1y7Rc-Zz) (:text |defatom)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |*reader-reel)
              |r $ %{} :Leaf (:at 1507829929366) (:by |root) (:text |@*reel)
        |*reel $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1507808379111) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1614525683442) (:by |B1y7Rc-Zz) (:text |defatom)
              |j $ %{} :Leaf (:at 1507808379111) (:by |root) (:text |*reel)
              |r $ %{} :Expr (:at 1507808379111) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507808397502) (:by |root) (:text |merge)
                  |j $ %{} :Leaf (:at 1507808421056) (:by |root) (:text |reel-schema)
                  |r $ %{} :Expr (:at 1507808421610) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507808424590) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1507808425954) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507808428338) (:by |root) (:text |:base)
                          |j $ %{} :Leaf (:at 1614526191000) (:by |B1y7Rc-Zz) (:text |@*initial-db)
                      |r $ %{} :Expr (:at 1507808432498) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507808433485) (:by |root) (:text |:db)
                          |j $ %{} :Leaf (:at 1614526188624) (:by |B1y7Rc-Zz) (:text |@*initial-db)
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1507805724033) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1507805746075) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1507805724033) (:by |root) (:text |dispatch!)
              |n $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op)
                  |v $ %{} :Leaf (:at 1507806585099) (:by |root) (:text |sid)
              |t $ %{} :Expr (:at 1513612441808) (:by |root)
                :data $ {}
                  |5 $ %{} :Leaf (:at 1513612449423) (:by |root) (:text |let)
                  |9 $ %{} :Expr (:at 1513612449699) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1513612450706) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1513612454094) (:by |root) (:text |op-id)
                          |j $ %{} :Expr (:at 1513612454756) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1635162125525) (:by |B1y7Rc-Zz) (:text |generate-id!)
                      |j $ %{} :Expr (:at 1513612459185) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1513612460384) (:by |root) (:text |op-time)
                          |b $ %{} :Expr (:at 1636977808838) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1636977811299) (:by |B1y7Rc-Zz) (:text |->)
                              |b $ %{} :Expr (:at 1636977950302) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636977950637) (:by |B1y7Rc-Zz) (:text |get-time!)
                              |v $ %{} :Expr (:at 1636977862513) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636977867393) (:by |B1y7Rc-Zz) (:text |.timestamp)
                  |D $ %{} :Expr (:at 1527441309672) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1527441310262) (:by |root) (:text |if)
                      |L $ %{} :Leaf (:at 1544855106984) (:by |B1y7Rc-Zz) (:text |config/dev?)
                      |T $ %{} :Expr (:at 1507805724033) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519314516627) (:by |root) (:text |println)
                          |r $ %{} :Leaf (:at 1507830373170) (:by |root) (:text "|\"Dispatch!")
                          |v $ %{} :Expr (:at 1507805724033) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507805724033) (:by |root) (:text |str)
                              |j $ %{} :Leaf (:at 1507805724033) (:by |root) (:text |op)
                          |y $ %{} :Leaf (:at 1507806587446) (:by |root) (:text |sid)
                  |b $ %{} :Expr (:at 1688410775805) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1688410778702) (:by |B1y7Rc-Zz) (:text |tag-match)
                      |b $ %{} :Leaf (:at 1688410780014) (:by |B1y7Rc-Zz) (:text |op)
                      |h $ %{} :Expr (:at 1688410780373) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Expr (:at 1688410781280) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1688410784187) (:by |B1y7Rc-Zz) (:text |:effect/persist)
                          |b $ %{} :Expr (:at 1688410787472) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1688410787472) (:by |B1y7Rc-Zz) (:text |persist-db!)
                      |j $ %{} :Expr (:at 1695972847550) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Expr (:at 1695972851683) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695972900049) (:by |B1y7Rc-Zz) (:text |:effect/ping)
                          |b $ %{} :Expr (:at 1695972866572) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695972866572) (:by |B1y7Rc-Zz) (:text |wss-send!)
                              |b $ %{} :Leaf (:at 1695972866572) (:by |B1y7Rc-Zz) (:text |sid)
                              |h $ %{} :Expr (:at 1695972866572) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695972866572) (:by |B1y7Rc-Zz) (:text |format-cirru-edn)
                                  |b $ %{} :Expr (:at 1695972866572) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1695972866572) (:by |B1y7Rc-Zz) (:text |::)
                                      |b $ %{} :Leaf (:at 1695972897148) (:by |B1y7Rc-Zz) (:text |:effect/pong)
                      |l $ %{} :Expr (:at 1688410788621) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1688410789086) (:by |B1y7Rc-Zz) (:text |_)
                          |b $ %{} :Expr (:at 1688410790989) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1688410790989) (:by |B1y7Rc-Zz) (:text |reset!)
                              |b $ %{} :Leaf (:at 1688410790989) (:by |B1y7Rc-Zz) (:text |*reel)
                              |h $ %{} :Expr (:at 1688410790989) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1688410790989) (:by |B1y7Rc-Zz) (:text |reel-reducer)
                                  |b $ %{} :Leaf (:at 1688410790989) (:by |B1y7Rc-Zz) (:text |@*reel)
                                  |h $ %{} :Leaf (:at 1688410790989) (:by |B1y7Rc-Zz) (:text |updater)
                                  |l $ %{} :Leaf (:at 1688410790989) (:by |B1y7Rc-Zz) (:text |op)
                                  |o $ %{} :Leaf (:at 1688410790989) (:by |B1y7Rc-Zz) (:text |sid)
                                  |q $ %{} :Leaf (:at 1688410790989) (:by |B1y7Rc-Zz) (:text |op-id)
                                  |s $ %{} :Leaf (:at 1688410790989) (:by |B1y7Rc-Zz) (:text |op-time)
                                  |t $ %{} :Leaf (:at 1688410790989) (:by |B1y7Rc-Zz) (:text |config/dev?)
        |get-backup-path! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1636563075858) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1636563075858) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1636563075858) (:by |B1y7Rc-Zz) (:text |get-backup-path!)
              |r $ %{} :Expr (:at 1636563075858) (:by |B1y7Rc-Zz)
                :data $ {}
              |v $ %{} :Expr (:at 1636563075858) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636563075858) (:by |B1y7Rc-Zz) (:text |let)
                  |j $ %{} :Expr (:at 1636563075858) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1636563075858) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636563075858) (:by |B1y7Rc-Zz) (:text |now)
                          |j $ %{} :Expr (:at 1636563097644) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1636977939104) (:by |B1y7Rc-Zz) (:text |.extract)
                              |T $ %{} :Expr (:at 1636563075858) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636563095502) (:by |B1y7Rc-Zz) (:text |get-time!)
                  |r $ %{} :Expr (:at 1636563075858) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636563211890) (:by |B1y7Rc-Zz) (:text |join-path)
                      |j $ %{} :Leaf (:at 1636563127552) (:by |B1y7Rc-Zz) (:text |calcit-dirname)
                      |r $ %{} :Leaf (:at 1636563075858) (:by |B1y7Rc-Zz) (:text "|\"backups")
                      |v $ %{} :Expr (:at 1636563075858) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636563075858) (:by |B1y7Rc-Zz) (:text |str)
                          |j $ %{} :Expr (:at 1636563075858) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1636563141242) (:by |B1y7Rc-Zz) (:text |:month)
                              |j $ %{} :Leaf (:at 1636563075858) (:by |B1y7Rc-Zz) (:text |now)
                      |x $ %{} :Expr (:at 1636563075858) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636563075858) (:by |B1y7Rc-Zz) (:text |str)
                          |j $ %{} :Expr (:at 1636563075858) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |L $ %{} :Leaf (:at 1636563246976) (:by |B1y7Rc-Zz) (:text |:day)
                              |j $ %{} :Leaf (:at 1636563075858) (:by |B1y7Rc-Zz) (:text |now)
                          |r $ %{} :Leaf (:at 1636563156174) (:by |B1y7Rc-Zz) (:text "|\"-snapshot.cirru")
        |main! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1589296199613) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |main!)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
              |t $ %{} :Expr (:at 1544874545787) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1544874545787) (:by |B1y7Rc-Zz) (:text |println)
                  |j $ %{} :Leaf (:at 1589296572333) (:by |B1y7Rc-Zz) (:text "|\"Running mode:")
                  |r $ %{} :Expr (:at 1544874545787) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1544874545787) (:by |B1y7Rc-Zz) (:text |if)
                      |j $ %{} :Leaf (:at 1544874545787) (:by |B1y7Rc-Zz) (:text |config/dev?)
                      |r $ %{} :Leaf (:at 1544874545787) (:by |B1y7Rc-Zz) (:text "|\"dev")
                      |v $ %{} :Leaf (:at 1544874545787) (:by |B1y7Rc-Zz) (:text "|\"release")
              |v $ %{} :Expr (:at 1553788514374) (:by |B1y7Rc-Zz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1553788515703) (:by |B1y7Rc-Zz) (:text |let)
                  |L $ %{} :Expr (:at 1553788515949) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Expr (:at 1635160419053) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1635160422444) (:by |B1y7Rc-Zz) (:text |p?)
                          |j $ %{} :Expr (:at 1635160426460) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1635160430513) (:by |B1y7Rc-Zz) (:text |get-env)
                              |j $ %{} :Leaf (:at 1635160432044) (:by |B1y7Rc-Zz) (:text "|\"port")
                      |T $ %{} :Expr (:at 1553788516107) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553788516783) (:by |B1y7Rc-Zz) (:text |port)
                          |j $ %{} :Expr (:at 1553788517778) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1553788530881) (:by |B1y7Rc-Zz) (:text |if)
                              |b $ %{} :Expr (:at 1553788531514) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553788532238) (:by |B1y7Rc-Zz) (:text |some?)
                                  |j $ %{} :Leaf (:at 1635160434991) (:by |B1y7Rc-Zz) (:text |p?)
                              |f $ %{} :Expr (:at 1553788557103) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636825225440) (:by |B1y7Rc-Zz) (:text |parse-float)
                                  |j $ %{} :Leaf (:at 1635160437106) (:by |B1y7Rc-Zz) (:text |p?)
                              |j $ %{} :Expr (:at 1553788525847) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553788525847) (:by |B1y7Rc-Zz) (:text |:port)
                                  |j $ %{} :Leaf (:at 1553788525847) (:by |B1y7Rc-Zz) (:text |config/site)
                  |T $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |run-server!)
                      |j $ %{} :Leaf (:at 1553788570566) (:by |B1y7Rc-Zz) (:text |port)
                  |j $ %{} :Expr (:at 1553788589416) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1553788589416) (:by |B1y7Rc-Zz) (:text |println)
                      |j $ %{} :Expr (:at 1553788598573) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1614526246596) (:by |B1y7Rc-Zz) (:text |str)
                          |T $ %{} :Leaf (:at 1614526243527) (:by |B1y7Rc-Zz) (:text "|\"Server started on port:")
                          |j $ %{} :Leaf (:at 1614526245207) (:by |B1y7Rc-Zz) (:text |port)
              |vT $ %{} :Expr (:at 1636482984993) (:by |B1y7Rc-Zz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1636482985690) (:by |B1y7Rc-Zz) (:text |do)
                  |L $ %{} :Expr (:at 1636482988001) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636482988301) (:by |B1y7Rc-Zz) (:text |;)
                      |j $ %{} :Leaf (:at 1636483517445) (:by |B1y7Rc-Zz) (:text "|\"init it before doing multi-threading")
                  |T $ %{} :Expr (:at 1636482978864) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636483021035) (:by |B1y7Rc-Zz) (:text |identity)
                      |j $ %{} :Leaf (:at 1636482980063) (:by |B1y7Rc-Zz) (:text |@*reader-reel)
              |w $ %{} :Expr (:at 1635182167256) (:by |B1y7Rc-Zz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1635182171626) (:by |B1y7Rc-Zz) (:text |set-interval)
                  |L $ %{} :Leaf (:at 1635182173717) (:by |B1y7Rc-Zz) (:text |200)
                  |T $ %{} :Expr (:at 1635182174577) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1635182175107) (:by |B1y7Rc-Zz) (:text |fn)
                      |L $ %{} :Expr (:at 1635182175369) (:by |B1y7Rc-Zz)
                        :data $ {}
                      |T $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |render-loop!)
              |yD $ %{} :Expr (:at 1636483009528) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636483009528) (:by |B1y7Rc-Zz) (:text |set-interval)
                  |j $ %{} :Leaf (:at 1636483009528) (:by |B1y7Rc-Zz) (:text |600000)
                  |r $ %{} :Expr (:at 1636483009528) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636483009528) (:by |B1y7Rc-Zz) (:text |fn)
                      |j $ %{} :Expr (:at 1636483009528) (:by |B1y7Rc-Zz)
                        :data $ {}
                      |r $ %{} :Expr (:at 1636483009528) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636483009528) (:by |B1y7Rc-Zz) (:text |persist-db!)
              |yb $ %{} :Expr (:at 1636483001347) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636483001347) (:by |B1y7Rc-Zz) (:text |on-control-c)
                  |j $ %{} :Leaf (:at 1636483001347) (:by |B1y7Rc-Zz) (:text |on-exit!)
        |on-exit! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1507806173399) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1507806175705) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1507806173399) (:by |root) (:text |on-exit!)
              |v $ %{} :Expr (:at 1507806173399) (:by |root)
                :data $ {}
              |x $ %{} :Expr (:at 1521797541557) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1521797534647) (:by |root) (:text |persist-db!)
              |xD $ %{} :Expr (:at 1521797676085) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1544811430713) (:by |B1y7Rc-Zz) (:text |;)
                  |T $ %{} :Leaf (:at 1521797676956) (:by |root) (:text |println)
                  |j $ %{} :Leaf (:at 1635182294855) (:by |B1y7Rc-Zz) (:text "|\"exit code is...")
              |yT $ %{} :Expr (:at 1507806173399) (:by |root)
                :data $ {}
                  |j $ %{} :Leaf (:at 1635182328647) (:by |B1y7Rc-Zz) (:text |quit!)
                  |r $ %{} :Leaf (:at 1635182329493) (:by |B1y7Rc-Zz) (:text |0)
        |persist-db! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1521797534647) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1521797538383) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1521797534647) (:by |root) (:text |persist-db!)
              |n $ %{} :Expr (:at 1521797539426) (:by |root)
                :data $ {}
              |v $ %{} :Expr (:at 1529516703080) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1529516707700) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1529516711063) (:by |root)
                    :data $ {}
                      |5 $ %{} :Expr (:at 1529516837153) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1529516842334) (:by |root) (:text |file-content)
                          |j $ %{} :Expr (:at 1521797534647) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1623719479122) (:by |B1y7Rc-Zz) (:text |format-cirru-edn)
                              |j $ %{} :Expr (:at 1521797534647) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1521797534647) (:by |root) (:text |assoc)
                                  |j $ %{} :Expr (:at 1521797534647) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1521797534647) (:by |root) (:text |:db)
                                      |j $ %{} :Leaf (:at 1521797534647) (:by |root) (:text |@*reel)
                                  |r $ %{} :Leaf (:at 1521797534647) (:by |root) (:text |:sessions)
                                  |v $ %{} :Expr (:at 1521797534647) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1521797534647) (:by |root) (:text |{})
                      |L $ %{} :Expr (:at 1529516997256) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1529517003417) (:by |root) (:text |storage-path)
                          |r $ %{} :Leaf (:at 1544855326234) (:by |B1y7Rc-Zz) (:text |storage-file)
                      |T $ %{} :Expr (:at 1529516714998) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1529516720230) (:by |root) (:text |backup-path)
                          |T $ %{} :Expr (:at 1544726142555) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1544726122581) (:by |B1y7Rc-Zz) (:text |get-backup-path!)
                  |n $ %{} :Expr (:at 1521797534647) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1636563023136) (:by |B1y7Rc-Zz) (:text |check-write-file!)
                      |f $ %{} :Leaf (:at 1529517008985) (:by |root) (:text |storage-path)
                      |r $ %{} :Leaf (:at 1529516853625) (:by |root) (:text |file-content)
                  |v $ %{} :Expr (:at 1521797534647) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636563022017) (:by |B1y7Rc-Zz) (:text |check-write-file!)
                      |f $ %{} :Leaf (:at 1529516865857) (:by |root) (:text |backup-path)
                      |r $ %{} :Leaf (:at 1529516862015) (:by |root) (:text |file-content)
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |reload!)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
              |v $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |println)
                  |j $ %{} :Leaf (:at 1707394853916) (:by |B1y7Rc-Zz) (:text "|\"Code updated..")
              |v5 $ %{} :Expr (:at 1636649564368) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636649565603) (:by |B1y7Rc-Zz) (:text |if)
                  |j $ %{} :Expr (:at 1636649572762) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1636649573585) (:by |B1y7Rc-Zz) (:text |not)
                      |T $ %{} :Leaf (:at 1636649570655) (:by |B1y7Rc-Zz) (:text |config/dev?)
                  |r $ %{} :Expr (:at 1636649574798) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636649577851) (:by |B1y7Rc-Zz) (:text |raise)
                      |j $ %{} :Leaf (:at 1636649597482) (:by |B1y7Rc-Zz) (:text "|\"reloading only happens in dev mode")
              |vT $ %{} :Expr (:at 1593255076396) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1593255076725) (:by |B1y7Rc-Zz) (:text |clear-twig-caches!)
              |w $ %{} :Expr (:at 1507808617377) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507808618991) (:by |root) (:text |reset!)
                  |j $ %{} :Leaf (:at 1507808620966) (:by |root) (:text |*reel)
                  |r $ %{} :Expr (:at 1507808621613) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507808630362) (:by |root) (:text |refresh-reel)
                      |X $ %{} :Leaf (:at 1507808655126) (:by |root) (:text |@*reel)
                      |b $ %{} :Leaf (:at 1614526195873) (:by |B1y7Rc-Zz) (:text |@*initial-db)
                      |j $ %{} :Leaf (:at 1507808635015) (:by |root) (:text |updater)
              |x $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507806907419) (:by |root) (:text |sync-clients!)
                  |j $ %{} :Leaf (:at 1507829993436) (:by |root) (:text |@*reader-reel)
        |render-loop! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |render-loop!)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
              |v $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1544811365548) (:by |B1y7Rc-Zz) (:text |when)
                  |j $ %{} :Expr (:at 1507829942161) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1507829942884) (:by |root) (:text |not)
                      |T $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507829941197) (:by |root) (:text |identical?)
                          |j $ %{} :Leaf (:at 1507830005566) (:by |root) (:text |@*reader-reel)
                          |r $ %{} :Leaf (:at 1507808466061) (:by |root) (:text |@*reel)
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |reset!)
                      |j $ %{} :Leaf (:at 1507829950396) (:by |root) (:text |*reader-reel)
                      |r $ %{} :Leaf (:at 1507808466061) (:by |root) (:text |@*reel)
                  |v $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507806914566) (:by |root) (:text |sync-clients!)
                      |j $ %{} :Leaf (:at 1507829954052) (:by |root) (:text |@*reader-reel)
        |run-server! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |run-server!)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1553788573690) (:by |B1y7Rc-Zz) (:text |port)
              |x $ %{} :Expr (:at 1544639479135) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1626341206891) (:by |B1y7Rc-Zz) (:text |wss-serve!)
                  |f $ %{} :Expr (:at 1635182103802) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1635182110068) (:by |B1y7Rc-Zz) (:text |&{})
                      |T $ %{} :Leaf (:at 1635182107276) (:by |B1y7Rc-Zz) (:text |:port)
                      |j $ %{} :Leaf (:at 1553788575365) (:by |B1y7Rc-Zz) (:text |port)
                  |l $ %{} :Expr (:at 1635160491567) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1635160492611) (:by |B1y7Rc-Zz) (:text |fn)
                      |j $ %{} :Expr (:at 1635160492934) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1635160495474) (:by |B1y7Rc-Zz) (:text |data)
                      |r $ %{} :Expr (:at 1635160496089) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1685294341413) (:by |B1y7Rc-Zz) (:text |tag-match)
                          |j $ %{} :Leaf (:at 1635160499190) (:by |B1y7Rc-Zz) (:text |data)
                          |r $ %{} :Expr (:at 1635160499496) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Expr (:at 1635160502110) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1635160530582) (:by |B1y7Rc-Zz) (:text |:connect)
                                  |j $ %{} :Leaf (:at 1635160533439) (:by |B1y7Rc-Zz) (:text |sid)
                              |j $ %{} :Expr (:at 1635160625336) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1635160625925) (:by |B1y7Rc-Zz) (:text |do)
                                  |L $ %{} :Expr (:at 1666896171793) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1666896171793) (:by |B1y7Rc-Zz) (:text |dispatch!)
                                      |b $ %{} :Expr (:at 1688410240693) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1688410241679) (:by |B1y7Rc-Zz) (:text |::)
                                          |T $ %{} :Leaf (:at 1666896171793) (:by |B1y7Rc-Zz) (:text |:session/connect)
                                      |l $ %{} :Leaf (:at 1666896171793) (:by |B1y7Rc-Zz) (:text |sid)
                                  |j $ %{} :Expr (:at 1635160631296) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1635160631296) (:by |B1y7Rc-Zz) (:text |println)
                                      |j $ %{} :Leaf (:at 1635160631296) (:by |B1y7Rc-Zz) (:text "|\"New client.")
                          |v $ %{} :Expr (:at 1635160551736) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Expr (:at 1635160554274) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1635160557910) (:by |B1y7Rc-Zz) (:text |:message)
                                  |j $ %{} :Leaf (:at 1635160559654) (:by |B1y7Rc-Zz) (:text |sid)
                                  |r $ %{} :Leaf (:at 1635160561670) (:by |B1y7Rc-Zz) (:text |msg)
                              |j $ %{} :Expr (:at 1635160645384) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1635160646234) (:by |B1y7Rc-Zz) (:text |let)
                                  |L $ %{} :Expr (:at 1635160646583) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Expr (:at 1635160646762) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1635160656788) (:by |B1y7Rc-Zz) (:text |action)
                                          |j $ %{} :Expr (:at 1635160649835) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1635160653767) (:by |B1y7Rc-Zz) (:text |parse-cirru-edn)
                                              |j $ %{} :Leaf (:at 1635160662056) (:by |B1y7Rc-Zz) (:text |msg)
                                  |T $ %{} :Expr (:at 1688410276465) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1688410276465) (:by |B1y7Rc-Zz) (:text |dispatch!)
                                      |b $ %{} :Leaf (:at 1688410276465) (:by |B1y7Rc-Zz) (:text |action)
                                      |h $ %{} :Leaf (:at 1688410276465) (:by |B1y7Rc-Zz) (:text |sid)
                          |x $ %{} :Expr (:at 1635160675938) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Expr (:at 1635160677336) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1635160681490) (:by |B1y7Rc-Zz) (:text |:disconnect)
                                  |j $ %{} :Leaf (:at 1635160683405) (:by |B1y7Rc-Zz) (:text |sid)
                              |j $ %{} :Expr (:at 1635160690840) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1635160690203) (:by |B1y7Rc-Zz) (:text |do)
                                  |j $ %{} :Expr (:at 1635160692329) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1635160693144) (:by |B1y7Rc-Zz) (:text |println)
                                      |j $ %{} :Leaf (:at 1635160700575) (:by |B1y7Rc-Zz) (:text "|\"Client closed!")
                                  |r $ %{} :Expr (:at 1635160703903) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1635160786164) (:by |B1y7Rc-Zz) (:text |dispatch!)
                                      |j $ %{} :Expr (:at 1688410247484) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1688410248196) (:by |B1y7Rc-Zz) (:text |::)
                                          |T $ %{} :Leaf (:at 1635160703903) (:by |B1y7Rc-Zz) (:text |:session/disconnect)
                                      |v $ %{} :Leaf (:at 1635160703903) (:by |B1y7Rc-Zz) (:text |sid)
                          |y $ %{} :Expr (:at 1635183649827) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1635183650233) (:by |B1y7Rc-Zz) (:text |_)
                              |j $ %{} :Expr (:at 1635183651156) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1635183651880) (:by |B1y7Rc-Zz) (:text |println)
                                  |j $ %{} :Leaf (:at 1635183659461) (:by |B1y7Rc-Zz) (:text "|\"unknown data:")
                                  |r $ %{} :Leaf (:at 1635183656693) (:by |B1y7Rc-Zz) (:text |data)
        |storage-file $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1544855327492) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1544855331477) (:by |B1y7Rc-Zz) (:text |def)
              |j $ %{} :Leaf (:at 1544855327492) (:by |B1y7Rc-Zz) (:text |storage-file)
              |r $ %{} :Expr (:at 1636483283664) (:by |B1y7Rc-Zz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1636483284276) (:by |B1y7Rc-Zz) (:text |if)
                  |L $ %{} :Expr (:at 1636483284845) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636483286766) (:by |B1y7Rc-Zz) (:text |empty?)
                      |j $ %{} :Leaf (:at 1636483288446) (:by |B1y7Rc-Zz) (:text |calcit-dirname)
                  |T $ %{} :Expr (:at 1544855327492) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1635160848925) (:by |B1y7Rc-Zz) (:text |str)
                      |j $ %{} :Leaf (:at 1635160845745) (:by |B1y7Rc-Zz) (:text |calcit-dirname)
                      |r $ %{} :Expr (:at 1544855342745) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1544855346989) (:by |B1y7Rc-Zz) (:text |:storage-file)
                          |j $ %{} :Leaf (:at 1544855349429) (:by |B1y7Rc-Zz) (:text |config/site)
                  |j $ %{} :Expr (:at 1544855327492) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1635160848925) (:by |B1y7Rc-Zz) (:text |str)
                      |j $ %{} :Leaf (:at 1635160845745) (:by |B1y7Rc-Zz) (:text |calcit-dirname)
                      |n $ %{} :Leaf (:at 1636483296441) (:by |B1y7Rc-Zz) (:text "|\"/")
                      |r $ %{} :Expr (:at 1544855342745) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1544855346989) (:by |B1y7Rc-Zz) (:text |:storage-file)
                          |j $ %{} :Leaf (:at 1544855349429) (:by |B1y7Rc-Zz) (:text |config/site)
        |sync-clients! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sync-clients!)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507829969369) (:by |root) (:text |reel)
              |v $ %{} :Expr (:at 1544724837933) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1544724897995) (:by |B1y7Rc-Zz) (:text |wss-each!)
                  |j $ %{} :Expr (:at 1544724844431) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1544724844720) (:by |B1y7Rc-Zz) (:text |fn)
                      |j $ %{} :Expr (:at 1544724845909) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1544724846756) (:by |B1y7Rc-Zz) (:text |sid)
                      |r $ %{} :Expr (:at 1544724852267) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1544724852267) (:by |B1y7Rc-Zz) (:text |let)
                          |j $ %{} :Expr (:at 1544724852267) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |9 $ %{} :Expr (:at 1544725017484) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1544725017484) (:by |B1y7Rc-Zz) (:text |db)
                                  |j $ %{} :Expr (:at 1544725017484) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1544725017484) (:by |B1y7Rc-Zz) (:text |:db)
                                      |j $ %{} :Leaf (:at 1544725017484) (:by |B1y7Rc-Zz) (:text |reel)
                              |L $ %{} :Expr (:at 1544725014330) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1544725014330) (:by |B1y7Rc-Zz) (:text |records)
                                  |j $ %{} :Expr (:at 1544725014330) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1544725014330) (:by |B1y7Rc-Zz) (:text |:records)
                                      |j $ %{} :Leaf (:at 1544725014330) (:by |B1y7Rc-Zz) (:text |reel)
                              |j $ %{} :Expr (:at 1544724852267) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1544724852267) (:by |B1y7Rc-Zz) (:text |session)
                                  |j $ %{} :Expr (:at 1544724852267) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1544724852267) (:by |B1y7Rc-Zz) (:text |get-in)
                                      |j $ %{} :Leaf (:at 1544724852267) (:by |B1y7Rc-Zz) (:text |db)
                                      |r $ %{} :Expr (:at 1544724852267) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1544724852267) (:by |B1y7Rc-Zz) (:text |[])
                                          |j $ %{} :Leaf (:at 1544724852267) (:by |B1y7Rc-Zz) (:text |:sessions)
                                          |r $ %{} :Leaf (:at 1544724852267) (:by |B1y7Rc-Zz) (:text |sid)
                              |r $ %{} :Expr (:at 1544724852267) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1544724852267) (:by |B1y7Rc-Zz) (:text |old-store)
                                  |j $ %{} :Expr (:at 1544724852267) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1544724852267) (:by |B1y7Rc-Zz) (:text |or)
                                      |j $ %{} :Expr (:at 1544724852267) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1544724852267) (:by |B1y7Rc-Zz) (:text |get)
                                          |j $ %{} :Leaf (:at 1544725649977) (:by |B1y7Rc-Zz) (:text |@*client-caches)
                                          |r $ %{} :Leaf (:at 1544724852267) (:by |B1y7Rc-Zz) (:text |sid)
                                      |r $ %{} :Leaf (:at 1544724852267) (:by |B1y7Rc-Zz) (:text |nil)
                              |v $ %{} :Expr (:at 1544724852267) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1544724852267) (:by |B1y7Rc-Zz) (:text |new-store)
                                  |j $ %{} :Expr (:at 1544724852267) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1544724852267) (:by |B1y7Rc-Zz) (:text |twig-container)
                                      |j $ %{} :Leaf (:at 1544724852267) (:by |B1y7Rc-Zz) (:text |db)
                                      |r $ %{} :Leaf (:at 1544724852267) (:by |B1y7Rc-Zz) (:text |session)
                                      |v $ %{} :Leaf (:at 1544724852267) (:by |B1y7Rc-Zz) (:text |records)
                              |x $ %{} :Expr (:at 1544724852267) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1544724852267) (:by |B1y7Rc-Zz) (:text |changes)
                                  |j $ %{} :Expr (:at 1544724852267) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1544724852267) (:by |B1y7Rc-Zz) (:text |diff-twig)
                                      |j $ %{} :Leaf (:at 1544724852267) (:by |B1y7Rc-Zz) (:text |old-store)
                                      |r $ %{} :Leaf (:at 1544724852267) (:by |B1y7Rc-Zz) (:text |new-store)
                                      |v $ %{} :Expr (:at 1544724852267) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1544724852267) (:by |B1y7Rc-Zz) (:text |{})
                                          |j $ %{} :Expr (:at 1544724852267) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1544724852267) (:by |B1y7Rc-Zz) (:text |:key)
                                              |j $ %{} :Leaf (:at 1544724852267) (:by |B1y7Rc-Zz) (:text |:id)
                          |r $ %{} :Expr (:at 1553328542810) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |5 $ %{} :Leaf (:at 1636825564624) (:by |B1y7Rc-Zz) (:text |;)
                              |D $ %{} :Leaf (:at 1553328543637) (:by |B1y7Rc-Zz) (:text |when)
                              |L $ %{} :Leaf (:at 1553328546908) (:by |B1y7Rc-Zz) (:text |config/dev?)
                              |T $ %{} :Expr (:at 1544724852267) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1544724852267) (:by |B1y7Rc-Zz) (:text |println)
                                  |j $ %{} :Leaf (:at 1544724852267) (:by |B1y7Rc-Zz) (:text "|\"Changes for")
                                  |r $ %{} :Leaf (:at 1544724852267) (:by |B1y7Rc-Zz) (:text |sid)
                                  |v $ %{} :Leaf (:at 1544724852267) (:by |B1y7Rc-Zz) (:text "|\":")
                                  |x $ %{} :Leaf (:at 1544724852267) (:by |B1y7Rc-Zz) (:text |changes)
                                  |y $ %{} :Expr (:at 1544724852267) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1544724852267) (:by |B1y7Rc-Zz) (:text |count)
                                      |j $ %{} :Leaf (:at 1544724852267) (:by |B1y7Rc-Zz) (:text |records)
                          |v $ %{} :Expr (:at 1544724852267) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1544724852267) (:by |B1y7Rc-Zz) (:text |if)
                              |j $ %{} :Expr (:at 1544724852267) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1544724852267) (:by |B1y7Rc-Zz) (:text |not=)
                                  |j $ %{} :Leaf (:at 1544724852267) (:by |B1y7Rc-Zz) (:text |changes)
                                  |r $ %{} :Expr (:at 1544724852267) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1544724852267) (:by |B1y7Rc-Zz) (:text |[])
                              |r $ %{} :Expr (:at 1544724852267) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1544724852267) (:by |B1y7Rc-Zz) (:text |do)
                                  |j $ %{} :Expr (:at 1544724852267) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1544724852267) (:by |B1y7Rc-Zz) (:text |wss-send!)
                                      |j $ %{} :Leaf (:at 1544724852267) (:by |B1y7Rc-Zz) (:text |sid)
                                      |r $ %{} :Expr (:at 1635183217715) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1635183256390) (:by |B1y7Rc-Zz) (:text |format-cirru-edn)
                                          |L $ %{} :Expr (:at 1688322233822) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1688322234147) (:by |B1y7Rc-Zz) (:text |::)
                                              |b $ %{} :Leaf (:at 1688322237326) (:by |B1y7Rc-Zz) (:text |:patch)
                                              |h $ %{} :Leaf (:at 1688322238909) (:by |B1y7Rc-Zz) (:text |changes)
                                  |r $ %{} :Expr (:at 1544724852267) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1544724852267) (:by |B1y7Rc-Zz) (:text |swap!)
                                      |j $ %{} :Leaf (:at 1544725652497) (:by |B1y7Rc-Zz) (:text |*client-caches)
                                      |r $ %{} :Leaf (:at 1544724852267) (:by |B1y7Rc-Zz) (:text |assoc)
                                      |v $ %{} :Leaf (:at 1544724852267) (:by |B1y7Rc-Zz) (:text |sid)
                                      |x $ %{} :Leaf (:at 1544724852267) (:by |B1y7Rc-Zz) (:text |new-store)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541255553) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.server)
            |r $ %{} :Expr (:at 1500541255553) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |schema)
                |v $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1517931127726) (:by |root) (:text |app.updater)
                    |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541255553) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |updater)
                |yL $ %{} :Expr (:at 1507808200988) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1545067236300) (:by |B1y7Rc-Zz) (:text |cumulo-reel.core)
                    |r $ %{} :Leaf (:at 1507808205649) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507808205916) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1524591466804) (:by |root) (:text |reel-reducer)
                        |r $ %{} :Leaf (:at 1507808213599) (:by |root) (:text |refresh-reel)
                        |v $ %{} :Leaf (:at 1507808445442) (:by |root) (:text |reel-schema)
                |yx $ %{} :Expr (:at 1527788877059) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1527788878839) (:by |root) (:text |app.config)
                    |r $ %{} :Leaf (:at 1527788879495) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1527788880219) (:by |root) (:text |config)
                |yyv $ %{} :Expr (:at 1544725704637) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1544725704637) (:by |B1y7Rc-Zz) (:text |app.twig.container)
                    |r $ %{} :Leaf (:at 1544725704637) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1544725704637) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1544725704637) (:by |B1y7Rc-Zz) (:text |twig-container)
                |yyx $ %{} :Expr (:at 1544725704637) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1544725704637) (:by |B1y7Rc-Zz) (:text |recollect.diff)
                    |r $ %{} :Leaf (:at 1544725704637) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1544725704637) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1544725704637) (:by |B1y7Rc-Zz) (:text |diff-twig)
                |yyyT $ %{} :Expr (:at 1544725704637) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1635160730364) (:by |B1y7Rc-Zz) (:text |wss.core)
                    |r $ %{} :Leaf (:at 1544725704637) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1544725704637) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1544725704637) (:by |B1y7Rc-Zz) (:text |wss-serve!)
                        |r $ %{} :Leaf (:at 1544725704637) (:by |B1y7Rc-Zz) (:text |wss-send!)
                        |v $ %{} :Leaf (:at 1544725704637) (:by |B1y7Rc-Zz) (:text |wss-each!)
                |yyyr $ %{} :Expr (:at 1593255050706) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1593255057574) (:by |B1y7Rc-Zz) (:text |recollect.twig)
                    |r $ %{} :Leaf (:at 1593255058305) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1593255058544) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |r $ %{} :Leaf (:at 1593255068726) (:by |B1y7Rc-Zz) (:text |clear-twig-caches!)
                |yyyv $ %{} :Expr (:at 1635160833287) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1635160836444) (:by |B1y7Rc-Zz) (:text |app.$meta)
                    |j $ %{} :Leaf (:at 1635160838057) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1635160839319) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1635160842976) (:by |B1y7Rc-Zz) (:text |calcit-dirname)
                |yyyx $ %{} :Expr (:at 1635161475137) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1635161475580) (:by |B1y7Rc-Zz) (:text |calcit.std.fs)
                    |j $ %{} :Leaf (:at 1635161477131) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1635161478027) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1635161480206) (:by |B1y7Rc-Zz) (:text |path-exists?)
                        |j $ %{} :Leaf (:at 1636563019300) (:by |B1y7Rc-Zz) (:text |check-write-file!)
                |yyyy $ %{} :Expr (:at 1635182186913) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1635182260715) (:by |B1y7Rc-Zz) (:text |calcit.std.time)
                    |j $ %{} :Leaf (:at 1635182190503) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1635182190860) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1635182195450) (:by |B1y7Rc-Zz) (:text |set-interval)
                |yyyyD $ %{} :Expr (:at 1636563177079) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1636563180263) (:by |B1y7Rc-Zz) (:text |calcit.std.date)
                    |j $ %{} :Leaf (:at 1636563181107) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1636563181701) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |r $ %{} :Leaf (:at 1636977804546) (:by |B1y7Rc-Zz) (:text |Date)
                        |v $ %{} :Leaf (:at 1636977935519) (:by |B1y7Rc-Zz) (:text |get-time!)
                |yyyyT $ %{} :Expr (:at 1636563104521) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1636563106784) (:by |B1y7Rc-Zz) (:text |calcit.std.path)
                    |j $ %{} :Leaf (:at 1636563108209) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1636563108442) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1636563204696) (:by |B1y7Rc-Zz) (:text |join-path)
    |app.twig.container $ %{} :FileEntry
      :defs $ {}
        |twig-container $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1614219490170) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |twig-container)
              |n $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                  |r $ %{} :Leaf (:at 1507828952210) (:by |root) (:text |records)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |logged-in?)
                          |j $ %{} :Expr (:at 1500541255553) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |some?)
                              |j $ %{} :Expr (:at 1500541255553) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:user-id)
                                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                      |j $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |router)
                          |j $ %{} :Expr (:at 1500541255553) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:router)
                              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                      |r $ %{} :Expr (:at 1507830626848) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507830630278) (:by |root) (:text |base-data)
                          |j $ %{} :Expr (:at 1507830631302) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507830631896) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1507830632113) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507830641027) (:by |root) (:text |:logged-in?)
                                  |j $ %{} :Leaf (:at 1507830639219) (:by |root) (:text |logged-in?)
                              |n $ %{} :Expr (:at 1507830674443) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507830677551) (:by |root) (:text |:session)
                                  |j $ %{} :Leaf (:at 1507830679311) (:by |root) (:text |session)
                              |v $ %{} :Expr (:at 1507830649968) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507830655148) (:by |root) (:text |:reel-length)
                                  |j $ %{} :Expr (:at 1507830655987) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1507830657551) (:by |root) (:text |count)
                                      |j $ %{} :Leaf (:at 1507830658789) (:by |root) (:text |records)
                              |w $ %{} :Expr (:at 1707454842428) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1707454847802) (:by |B1y7Rc-Zz) (:text |:attached)
                                  |b $ %{} :Expr (:at 1707455955624) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1707455956181) (:by |B1y7Rc-Zz) (:text |{})
                                      |L $ %{} :Expr (:at 1707455959904) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1707455962632) (:by |B1y7Rc-Zz) (:text |:type)
                                          |b $ %{} :Leaf (:at 1707455965088) (:by |B1y7Rc-Zz) (:text |:msg)
                                      |T $ %{} :Expr (:at 1707455956808) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1707455959188) (:by |B1y7Rc-Zz) (:text |:content)
                                          |T $ %{} :Leaf (:at 1707455993646) (:by |B1y7Rc-Zz) (:text "||SOME data")
                  |r $ %{} :Expr (:at 1507830661017) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1507830661999) (:by |root) (:text |merge)
                      |L $ %{} :Leaf (:at 1507830664014) (:by |root) (:text |base-data)
                      |T $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |if)
                          |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |logged-in?)
                          |r $ %{} :Expr (:at 1500541255553) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                              |v $ %{} :Expr (:at 1500541255553) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:user)
                                  |j $ %{} :Expr (:at 1500541255553) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |twig-user)
                                      |j $ %{} :Expr (:at 1636643548623) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1636643549953) (:by |B1y7Rc-Zz) (:text |dissoc)
                                          |T $ %{} :Expr (:at 1500541255553) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |get-in)
                                              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                                              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                                                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:users)
                                                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:user-id)
                                                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                                          |j $ %{} :Leaf (:at 1636643553186) (:by |B1y7Rc-Zz) (:text |:tasks)
                              |x $ %{} :Expr (:at 1500541255553) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:router)
                                  |j $ %{} :Expr (:at 1524070628251) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1524070634499) (:by |root) (:text |assoc)
                                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |router)
                                      |j $ %{} :Leaf (:at 1524070635855) (:by |root) (:text |:data)
                                      |r $ %{} :Expr (:at 1524070636122) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1636548534476) (:by |B1y7Rc-Zz) (:text |case-default)
                                          |j $ %{} :Expr (:at 1524070641804) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1524070642493) (:by |root) (:text |:name)
                                              |j $ %{} :Leaf (:at 1524070643351) (:by |root) (:text |router)
                                          |l $ %{} :Expr (:at 1636548536573) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1636548537938) (:by |B1y7Rc-Zz) (:text |{})
                                          |n $ %{} :Expr (:at 1525108994160) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1525108995413) (:by |root) (:text |:home)
                                              |j $ %{} :Expr (:at 1525108999855) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1525109002003) (:by |root) (:text |:pages)
                                                  |j $ %{} :Leaf (:at 1525109002404) (:by |root) (:text |db)
                                          |r $ %{} :Expr (:at 1524070643948) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1524070646898) (:by |root) (:text |:profile)
                                              |j $ %{} :Expr (:at 1524070654495) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1524070662619) (:by |root) (:text |twig-members)
                                                  |j $ %{} :Expr (:at 1524070665615) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1524070670477) (:by |root) (:text |:sessions)
                                                      |j $ %{} :Leaf (:at 1524070672563) (:by |root) (:text |db)
                                                  |r $ %{} :Expr (:at 1524070673171) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1524070674094) (:by |root) (:text |:users)
                                                      |j $ %{} :Leaf (:at 1524070675166) (:by |root) (:text |db)
                              |y $ %{} :Expr (:at 1523120222572) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1523120223864) (:by |root) (:text |:count)
                                  |j $ %{} :Expr (:at 1523120229051) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1523120230136) (:by |root) (:text |count)
                                      |j $ %{} :Expr (:at 1523120230346) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1523120232122) (:by |root) (:text |:sessions)
                                          |j $ %{} :Leaf (:at 1523120232500) (:by |root) (:text |db)
                              |yT $ %{} :Expr (:at 1524279105545) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1635183357696) (:by |B1y7Rc-Zz) (:text |:color)
                                  |j $ %{} :Expr (:at 1636712063673) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1636712072821) (:by |B1y7Rc-Zz) (:text |rand-hex-color!)
                          |v $ %{} :Expr (:at 1635183005902) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1635183006397) (:by |B1y7Rc-Zz) (:text |{})
        |twig-members $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1524070676419) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1614219483262) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1524070676419) (:by |root) (:text |twig-members)
              |r $ %{} :Expr (:at 1524070676419) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1524070680419) (:by |root) (:text |sessions)
                  |j $ %{} :Leaf (:at 1524070708862) (:by |root) (:text |users)
              |v $ %{} :Expr (:at 1524070683188) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1619671777595) (:by |B1y7Rc-Zz) (:text |->)
                  |j $ %{} :Leaf (:at 1524070692906) (:by |root) (:text |sessions)
                  |n $ %{} :Expr (:at 1614611278703) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1624862834933) (:by |B1y7Rc-Zz) (:text |.to-list)
                  |r $ %{} :Expr (:at 1524070693234) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1524070695660) (:by |root) (:text |map)
                      |j $ %{} :Expr (:at 1524070696021) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1524070696334) (:by |root) (:text |fn)
                          |j $ %{} :Expr (:at 1524070696681) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1614526033545) (:by |B1y7Rc-Zz) (:text |pair)
                          |r $ %{} :Expr (:at 1614526022798) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1614526024290) (:by |B1y7Rc-Zz) (:text |let[])
                              |L $ %{} :Expr (:at 1614526024660) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1614526025858) (:by |B1y7Rc-Zz) (:text |k)
                                  |j $ %{} :Leaf (:at 1614526027636) (:by |B1y7Rc-Zz) (:text |session)
                              |P $ %{} :Leaf (:at 1614526030548) (:by |B1y7Rc-Zz) (:text |pair)
                              |T $ %{} :Expr (:at 1524070700350) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1524070701520) (:by |root) (:text |[])
                                  |j $ %{} :Leaf (:at 1524070702142) (:by |root) (:text |k)
                                  |r $ %{} :Expr (:at 1524070702968) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1524070705127) (:by |root) (:text |get-in)
                                      |j $ %{} :Leaf (:at 1524070714762) (:by |root) (:text |users)
                                      |r $ %{} :Expr (:at 1524070715457) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1524070716715) (:by |root) (:text |[])
                                          |j $ %{} :Expr (:at 1524070717257) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1524070720176) (:by |root) (:text |:user-id)
                                              |j $ %{} :Leaf (:at 1524070722292) (:by |root) (:text |session)
                                          |r $ %{} :Leaf (:at 1524070725752) (:by |root) (:text |:name)
                  |v $ %{} :Expr (:at 1524070729744) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1614526275638) (:by |B1y7Rc-Zz) (:text |pairs-map)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541255553) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.twig.container)
            |r $ %{} :Expr (:at 1500541255553) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:require)
                |r $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.twig.user)
                    |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541255553) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |twig-user)
                |y $ %{} :Expr (:at 1636712076557) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1636712084750) (:by |B1y7Rc-Zz) (:text |calcit.std.rand)
                    |j $ %{} :Leaf (:at 1636712086249) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1636712086611) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1636712086961) (:by |B1y7Rc-Zz) (:text |rand-hex-color!)
    |app.twig.user $ %{} :FileEntry
      :defs $ {}
        |twig-user $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1614219471783) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |twig-user)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |user)
              |v $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |dissoc)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |user)
                  |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:password)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541255553) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.twig.user)
            |r $ %{} :Expr (:at 1500541255553) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:require)
    |app.updater $ %{} :FileEntry
      :defs $ {}
        |updater $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |updater)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op)
                  |v $ %{} :Leaf (:at 1517930722619) (:by |root) (:text |sid)
                  |x $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-id)
                  |y $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1517930695338) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1517930698044) (:by |root) (:text |let)
                  |T $ %{} :Expr (:at 1517930701054) (:by |root)
                    :data $ {}
                      |D $ %{} :Expr (:at 1592690540885) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1592690550641) (:by |B1y7Rc-Zz) (:text |session)
                          |j $ %{} :Expr (:at 1592690553430) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1592690555595) (:by |B1y7Rc-Zz) (:text |get-in)
                              |j $ %{} :Leaf (:at 1592690555932) (:by |B1y7Rc-Zz) (:text |db)
                              |r $ %{} :Expr (:at 1592690556882) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1592690557104) (:by |B1y7Rc-Zz) (:text |[])
                                  |j $ %{} :Leaf (:at 1592690559221) (:by |B1y7Rc-Zz) (:text |:sessions)
                                  |r $ %{} :Leaf (:at 1592690560293) (:by |B1y7Rc-Zz) (:text |sid)
                      |L $ %{} :Expr (:at 1592690561305) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1592690563721) (:by |B1y7Rc-Zz) (:text |user)
                          |j $ %{} :Expr (:at 1619672347505) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1619672350501) (:by |B1y7Rc-Zz) (:text |if)
                              |L $ %{} :Expr (:at 1619672351159) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1619672351876) (:by |B1y7Rc-Zz) (:text |some?)
                                  |j $ %{} :Leaf (:at 1619672353488) (:by |B1y7Rc-Zz) (:text |session)
                              |T $ %{} :Expr (:at 1592690563994) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1592690564923) (:by |B1y7Rc-Zz) (:text |get-in)
                                  |j $ %{} :Leaf (:at 1592690565646) (:by |B1y7Rc-Zz) (:text |db)
                                  |r $ %{} :Expr (:at 1592690566041) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1592690566313) (:by |B1y7Rc-Zz) (:text |[])
                                      |j $ %{} :Leaf (:at 1592690567241) (:by |B1y7Rc-Zz) (:text |:users)
                                      |r $ %{} :Expr (:at 1592690570870) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1592690572697) (:by |B1y7Rc-Zz) (:text |:user-id)
                                          |j $ %{} :Leaf (:at 1592690574624) (:by |B1y7Rc-Zz) (:text |session)
                  |j $ %{} :Expr (:at 1688410333424) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1688410336708) (:by |B1y7Rc-Zz) (:text |tag-match)
                      |b $ %{} :Leaf (:at 1688410333424) (:by |B1y7Rc-Zz) (:text |op)
                      |l $ %{} :Expr (:at 1688410333424) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Expr (:at 1688410349134) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1688410333424) (:by |B1y7Rc-Zz) (:text |:session/connect)
                          |b $ %{} :Expr (:at 1688410355992) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1688410333424) (:by |B1y7Rc-Zz) (:text |session/connect)
                              |b $ %{} :Leaf (:at 1688410358427) (:by |B1y7Rc-Zz) (:text |db)
                              |h $ %{} :Leaf (:at 1688410360625) (:by |B1y7Rc-Zz) (:text |sid)
                              |l $ %{} :Leaf (:at 1688410362154) (:by |B1y7Rc-Zz) (:text |op-id)
                              |o $ %{} :Leaf (:at 1688410363830) (:by |B1y7Rc-Zz) (:text |op-time)
                      |o $ %{} :Expr (:at 1688410333424) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Expr (:at 1688410367214) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1688410333424) (:by |B1y7Rc-Zz) (:text |:session/disconnect)
                          |b $ %{} :Expr (:at 1688410368132) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1688410333424) (:by |B1y7Rc-Zz) (:text |session/disconnect)
                              |b $ %{} :Leaf (:at 1688410369925) (:by |B1y7Rc-Zz) (:text |db)
                              |h $ %{} :Leaf (:at 1688410371144) (:by |B1y7Rc-Zz) (:text |sid)
                              |l $ %{} :Leaf (:at 1688410372375) (:by |B1y7Rc-Zz) (:text |op-id)
                              |o $ %{} :Leaf (:at 1688410373989) (:by |B1y7Rc-Zz) (:text |op-time)
                      |q $ %{} :Expr (:at 1688410333424) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Expr (:at 1688410375026) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1688410333424) (:by |B1y7Rc-Zz) (:text |:session/remove-message)
                              |b $ %{} :Leaf (:at 1688410375790) (:by |B1y7Rc-Zz) (:text |data)
                          |b $ %{} :Expr (:at 1688410376586) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1688410333424) (:by |B1y7Rc-Zz) (:text |session/remove-message)
                              |b $ %{} :Leaf (:at 1688410378907) (:by |B1y7Rc-Zz) (:text |db)
                              |e $ %{} :Leaf (:at 1688410388153) (:by |B1y7Rc-Zz) (:text |data)
                              |h $ %{} :Leaf (:at 1688410380525) (:by |B1y7Rc-Zz) (:text |sid)
                              |l $ %{} :Leaf (:at 1688410385338) (:by |B1y7Rc-Zz) (:text |op-id)
                              |o $ %{} :Leaf (:at 1688410386692) (:by |B1y7Rc-Zz) (:text |op-time)
                      |s $ %{} :Expr (:at 1688410333424) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Expr (:at 1688410393335) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1688410333424) (:by |B1y7Rc-Zz) (:text |:user/log-in)
                              |b $ %{} :Leaf (:at 1688410395134) (:by |B1y7Rc-Zz) (:text |username)
                              |h $ %{} :Leaf (:at 1688410396364) (:by |B1y7Rc-Zz) (:text |password)
                          |b $ %{} :Expr (:at 1688410397802) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1688410333424) (:by |B1y7Rc-Zz) (:text |user/log-in)
                              |b $ %{} :Leaf (:at 1688410398611) (:by |B1y7Rc-Zz) (:text |db)
                              |h $ %{} :Leaf (:at 1688410400291) (:by |B1y7Rc-Zz) (:text |username)
                              |l $ %{} :Leaf (:at 1688410402272) (:by |B1y7Rc-Zz) (:text |password)
                              |o $ %{} :Leaf (:at 1688410404058) (:by |B1y7Rc-Zz) (:text |sid)
                              |q $ %{} :Leaf (:at 1688410406725) (:by |B1y7Rc-Zz) (:text |op-id)
                              |s $ %{} :Leaf (:at 1688410408012) (:by |B1y7Rc-Zz) (:text |op-time)
                      |t $ %{} :Expr (:at 1688410333424) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Expr (:at 1688410429614) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1688410333424) (:by |B1y7Rc-Zz) (:text |:user/sign-up)
                              |b $ %{} :Leaf (:at 1688410436822) (:by |B1y7Rc-Zz) (:text |username)
                              |h $ %{} :Leaf (:at 1688410438125) (:by |B1y7Rc-Zz) (:text |password)
                          |b $ %{} :Expr (:at 1688410439055) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1688410333424) (:by |B1y7Rc-Zz) (:text |user/sign-up)
                              |b $ %{} :Leaf (:at 1688410440924) (:by |B1y7Rc-Zz) (:text |db)
                              |h $ %{} :Leaf (:at 1688410440924) (:by |B1y7Rc-Zz) (:text |username)
                              |l $ %{} :Leaf (:at 1688410440924) (:by |B1y7Rc-Zz) (:text |password)
                              |o $ %{} :Leaf (:at 1688410440924) (:by |B1y7Rc-Zz) (:text |sid)
                              |q $ %{} :Leaf (:at 1688410440924) (:by |B1y7Rc-Zz) (:text |op-id)
                              |s $ %{} :Leaf (:at 1688410440924) (:by |B1y7Rc-Zz) (:text |op-time)
                      |u $ %{} :Expr (:at 1688410333424) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Expr (:at 1688410448943) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1688410333424) (:by |B1y7Rc-Zz) (:text |:user/log-out)
                          |b $ %{} :Expr (:at 1688410449763) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1688410333424) (:by |B1y7Rc-Zz) (:text |user/log-out)
                              |b $ %{} :Leaf (:at 1688410451338) (:by |B1y7Rc-Zz) (:text |db)
                              |h $ %{} :Leaf (:at 1688410452807) (:by |B1y7Rc-Zz) (:text |sid)
                              |l $ %{} :Leaf (:at 1688410453926) (:by |B1y7Rc-Zz) (:text |op-id)
                              |o $ %{} :Leaf (:at 1688410455521) (:by |B1y7Rc-Zz) (:text |op-time)
                      |v $ %{} :Expr (:at 1688410333424) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Expr (:at 1688410456705) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1688410333424) (:by |B1y7Rc-Zz) (:text |:router/change)
                              |b $ %{} :Leaf (:at 1688410457461) (:by |B1y7Rc-Zz) (:text |data)
                          |b $ %{} :Expr (:at 1688410458899) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1688410333424) (:by |B1y7Rc-Zz) (:text |router/change)
                              |b $ %{} :Leaf (:at 1688410461374) (:by |B1y7Rc-Zz) (:text |db)
                              |h $ %{} :Leaf (:at 1688410462063) (:by |B1y7Rc-Zz) (:text |data)
                              |l $ %{} :Leaf (:at 1688410463622) (:by |B1y7Rc-Zz) (:text |sid)
                              |o $ %{} :Leaf (:at 1688410464873) (:by |B1y7Rc-Zz) (:text |op-id)
                              |q $ %{} :Leaf (:at 1688410466176) (:by |B1y7Rc-Zz) (:text |op-time)
                      |w $ %{} :Expr (:at 1688410467761) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1688410468332) (:by |B1y7Rc-Zz) (:text |_)
                          |b $ %{} :Expr (:at 1688410469068) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1688410469357) (:by |B1y7Rc-Zz) (:text |do)
                              |b $ %{} :Expr (:at 1688410469636) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1688410471317) (:by |B1y7Rc-Zz) (:text |eprintln)
                                  |b $ %{} :Leaf (:at 1688410479428) (:by |B1y7Rc-Zz) (:text "|\"Unknown op:")
                                  |h $ %{} :Leaf (:at 1688410481853) (:by |B1y7Rc-Zz) (:text |op)
                              |h $ %{} :Leaf (:at 1688410483027) (:by |B1y7Rc-Zz) (:text |db)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541255553) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.updater)
            |r $ %{} :Expr (:at 1500541255553) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.updater.session)
                    |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                |r $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.updater.user)
                    |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |user)
                |v $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.updater.router)
                    |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |router)
                |y $ %{} :Expr (:at 1529231005993) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1529231007723) (:by |root) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1529231008972) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1529231009860) (:by |root) (:text |schema)
                |yT $ %{} :Expr (:at 1529231108810) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1529231113905) (:by |root) (:text |respo-message.updater)
                    |r $ %{} :Leaf (:at 1529231114617) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1529231114849) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1529231118760) (:by |root) (:text |update-messages)
    |app.updater.router $ %{} :FileEntry
      :defs $ {}
        |change $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |change)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-data)
                  |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |assoc-in)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:sessions)
                      |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                      |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:router)
                  |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-data)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541255553) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.updater.router)
    |app.updater.session $ %{} :FileEntry
      :defs $ {}
        |connect $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |connect)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |assoc-in)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:sessions)
                      |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                  |v $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |merge)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |schema/session)
                      |r $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1500541255553) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:id)
                              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
        |disconnect $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |disconnect)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |update)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:sessions)
                  |v $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |fn)
                      |j $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                      |r $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |dissoc)
                          |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                          |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
        |remove-message $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1529231499908) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1529231499908) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1529231499908) (:by |root) (:text |remove-message)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-data)
                  |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1529231506714) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1529231507936) (:by |root) (:text |update-in)
                  |j $ %{} :Leaf (:at 1529231509725) (:by |root) (:text |db)
                  |r $ %{} :Expr (:at 1529231509958) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1529231510376) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1529231511756) (:by |root) (:text |:sessions)
                      |r $ %{} :Leaf (:at 1529231512509) (:by |root) (:text |sid)
                      |v $ %{} :Leaf (:at 1529231515700) (:by |root) (:text |:messages)
                  |v $ %{} :Expr (:at 1529231534326) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1529231534991) (:by |root) (:text |fn)
                      |L $ %{} :Expr (:at 1529231535248) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1529231536189) (:by |root) (:text |messages)
                      |T $ %{} :Expr (:at 1529231516827) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1529231517957) (:by |root) (:text |dissoc)
                          |j $ %{} :Leaf (:at 1529231519342) (:by |root) (:text |messages)
                          |r $ %{} :Expr (:at 1529231521395) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1529231522521) (:by |root) (:text |:id)
                              |j $ %{} :Leaf (:at 1529231524125) (:by |root) (:text |op-data)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541255553) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.updater.session)
            |r $ %{} :Expr (:at 1500541255553) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |schema)
    |app.updater.user $ %{} :FileEntry
      :defs $ {}
        |log-in $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |log-in)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1688410411620) (:by |B1y7Rc-Zz) (:text |username)
                  |n $ %{} :Leaf (:at 1688410413974) (:by |B1y7Rc-Zz) (:text |password)
                  |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1688410416308) (:by |B1y7Rc-Zz) (:text |let)
                  |j $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |j $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |maybe-user)
                          |j $ %{} :Expr (:at 1614611472628) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1619671818697) (:by |B1y7Rc-Zz) (:text |->)
                              |L $ %{} :Expr (:at 1614611474366) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1614611474366) (:by |B1y7Rc-Zz) (:text |:users)
                                  |j $ %{} :Leaf (:at 1614611474366) (:by |B1y7Rc-Zz) (:text |db)
                              |P $ %{} :Expr (:at 1614611479195) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1614611480678) (:by |B1y7Rc-Zz) (:text |vals)
                              |R $ %{} :Expr (:at 1614611482997) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1623719500287) (:by |B1y7Rc-Zz) (:text |.to-list)
                              |T $ %{} :Expr (:at 1500541255553) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1614525922202) (:by |B1y7Rc-Zz) (:text |find)
                                  |j $ %{} :Expr (:at 1500541255553) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |fn)
                                      |j $ %{} :Expr (:at 1500541255553) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |user)
                                      |r $ %{} :Expr (:at 1500541255553) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |and)
                                          |j $ %{} :Expr (:at 1500541255553) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |=)
                                              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |username)
                                              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:name)
                                                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |user)
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |update-in)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                      |r $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                          |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:sessions)
                          |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                      |v $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |fn)
                          |j $ %{} :Expr (:at 1500541255553) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                          |r $ %{} :Expr (:at 1500541255553) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |if)
                              |j $ %{} :Expr (:at 1500541255553) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |some?)
                                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |maybe-user)
                              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |if)
                                  |j $ %{} :Expr (:at 1500541255553) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |=)
                                      |j $ %{} :Expr (:at 1513097153553) (:by |root)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1621415609168) (:by |B1y7Rc-Zz) (:text |md5)
                                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |password)
                                      |r $ %{} :Expr (:at 1500541255553) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:password)
                                          |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |maybe-user)
                                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |assoc)
                                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                                      |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:user-id)
                                      |v $ %{} :Expr (:at 1500541255553) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:id)
                                          |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |maybe-user)
                                  |v $ %{} :Expr (:at 1500541255553) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |update)
                                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                                      |r $ %{} :Leaf (:at 1529231216021) (:by |root) (:text |:messages)
                                      |s $ %{} :Expr (:at 1529231333614) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1529231334066) (:by |root) (:text |fn)
                                          |j $ %{} :Expr (:at 1529231334315) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1529231335300) (:by |root) (:text |messages)
                                          |r $ %{} :Expr (:at 1529231335850) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1529231336782) (:by |root) (:text |assoc)
                                              |j $ %{} :Leaf (:at 1529231338079) (:by |root) (:text |messages)
                                              |r $ %{} :Leaf (:at 1529231340776) (:by |root) (:text |op-id)
                                              |v $ %{} :Expr (:at 1529231341042) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1529231341388) (:by |root) (:text |{})
                                                  |j $ %{} :Expr (:at 1529231341639) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1529231342464) (:by |root) (:text |:id)
                                                      |j $ %{} :Leaf (:at 1529231344051) (:by |root) (:text |op-id)
                                                  |r $ %{} :Expr (:at 1529231344564) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1529231345346) (:by |root) (:text |:text)
                                                      |j $ %{} :Expr (:at 1500541255553) (:by nil)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |str)
                                                          |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text "|\"Wrong password for ")
                                                          |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |username)
                              |v $ %{} :Expr (:at 1500541255553) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |update)
                                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                                  |r $ %{} :Leaf (:at 1529231357178) (:by |root) (:text |:messages)
                                  |t $ %{} :Expr (:at 1529231333614) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1529231334066) (:by |root) (:text |fn)
                                      |j $ %{} :Expr (:at 1529231334315) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1529231335300) (:by |root) (:text |messages)
                                      |r $ %{} :Expr (:at 1529231335850) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1529231336782) (:by |root) (:text |assoc)
                                          |j $ %{} :Leaf (:at 1529231338079) (:by |root) (:text |messages)
                                          |r $ %{} :Leaf (:at 1529231340776) (:by |root) (:text |op-id)
                                          |v $ %{} :Expr (:at 1529231341042) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1529231341388) (:by |root) (:text |{})
                                              |j $ %{} :Expr (:at 1529231341639) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1529231342464) (:by |root) (:text |:id)
                                                  |j $ %{} :Leaf (:at 1529231344051) (:by |root) (:text |op-id)
                                              |r $ %{} :Expr (:at 1529231344564) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1529231345346) (:by |root) (:text |:text)
                                                  |j $ %{} :Expr (:at 1500541255553) (:by nil)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |str)
                                                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text "|\"No user named: ")
                                                      |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |username)
        |log-out $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |log-out)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |assoc-in)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:sessions)
                      |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                      |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:user-id)
                  |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
        |sign-up $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sign-up)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1688410422789) (:by |B1y7Rc-Zz) (:text |username)
                  |n $ %{} :Leaf (:at 1688410424091) (:by |B1y7Rc-Zz) (:text |password)
                  |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1688410426527) (:by |B1y7Rc-Zz) (:text |let)
                  |j $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |j $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |maybe-user)
                          |j $ %{} :Expr (:at 1500541255553) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1614525953566) (:by |B1y7Rc-Zz) (:text |find)
                              |b $ %{} :Expr (:at 1621274990462) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1621274990462) (:by |B1y7Rc-Zz) (:text |vals)
                                  |j $ %{} :Expr (:at 1621274990462) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1621274990462) (:by |B1y7Rc-Zz) (:text |:users)
                                      |j $ %{} :Leaf (:at 1621274990462) (:by |B1y7Rc-Zz) (:text |db)
                              |j $ %{} :Expr (:at 1500541255553) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |fn)
                                  |j $ %{} :Expr (:at 1500541255553) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |user)
                                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |=)
                                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |username)
                                      |r $ %{} :Expr (:at 1500541255553) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:name)
                                          |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |user)
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |if)
                      |j $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |some?)
                          |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |maybe-user)
                      |r $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |update-in)
                          |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                          |r $ %{} :Expr (:at 1500541255553) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:sessions)
                              |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                              |v $ %{} :Leaf (:at 1529231378943) (:by |root) (:text |:messages)
                          |t $ %{} :Expr (:at 1529231383180) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1529231383493) (:by |root) (:text |fn)
                              |j $ %{} :Expr (:at 1529231383905) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1529231385117) (:by |root) (:text |messages)
                              |r $ %{} :Expr (:at 1529231389500) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1529231390515) (:by |root) (:text |assoc)
                                  |j $ %{} :Leaf (:at 1529231392100) (:by |root) (:text |messages)
                                  |r $ %{} :Leaf (:at 1529231392968) (:by |root) (:text |op-id)
                                  |v $ %{} :Expr (:at 1529231394297) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1529231394624) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1529231394805) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1529231395240) (:by |root) (:text |:id)
                                          |j $ %{} :Leaf (:at 1529231395978) (:by |root) (:text |op-id)
                                      |r $ %{} :Expr (:at 1529231396572) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1529231398772) (:by |root) (:text |:text)
                                          |j $ %{} :Expr (:at 1500541255553) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |str)
                                              |j $ %{} :Leaf (:at 1586599249174) (:by |B1y7Rc-Zz) (:text "|\"Name is taken: ")
                                              |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |username)
                      |v $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |->)
                          |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                          |r $ %{} :Expr (:at 1500541255553) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |assoc-in)
                              |j $ %{} :Expr (:at 1500541255553) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:sessions)
                                  |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                                  |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:user-id)
                              |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-id)
                          |v $ %{} :Expr (:at 1500541255553) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |assoc-in)
                              |j $ %{} :Expr (:at 1500541255553) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:users)
                                  |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-id)
                              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1500541255553) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:id)
                                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-id)
                                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:name)
                                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |username)
                                  |v $ %{} :Expr (:at 1500541255553) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:nickname)
                                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |username)
                                  |x $ %{} :Expr (:at 1500541255553) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:password)
                                      |j $ %{} :Expr (:at 1513097129906) (:by |root)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1621415633381) (:by |B1y7Rc-Zz) (:text |md5)
                                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |password)
                                  |y $ %{} :Expr (:at 1500541255553) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:avatar)
                                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541255553) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.updater.user)
            |r $ %{} :Expr (:at 1500541255553) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:require)
                |r $ %{} :Expr (:at 1635221873103) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1635221896246) (:by |B1y7Rc-Zz) (:text |calcit.std.hash)
                    |j $ %{} :Leaf (:at 1635221882882) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1635221883114) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1635221884395) (:by |B1y7Rc-Zz) (:text |md5)
  :users $ {}
    |B1y7Rc-Zz $ {} (:avatar nil) (:id |B1y7Rc-Zz) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
    |root $ {} (:avatar nil) (:id |root) (:name |root) (:nickname |root) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
