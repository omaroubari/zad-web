'use client'
import { cn } from '@/utilities/ui'
import React, { useState } from 'react'
import { AnimatePresence, motion } from 'motion/react'
import RichText from '@/components/RichText'

import type { ContentBlock } from '@/payload-types'

import { Media } from '@/components/Media'

export const Content02: React.FC<ContentBlock> = (props) => {
  const { richText, list } = props
  const [activeAccordionId, setActiveAccordionId] = useState<string>(
    list && list.length > 0 && list?.[0]?.id ? list[0].id : '',
  )

  return (
    <div className="bg-background-neutral w-full">
      <div className="flex flex-col">
        {richText && (
          <div className="section pt-site w-full">
            <RichText className="m-0" data={richText} enableGutter={false} />
          </div>
        )}
        {list && (
          <div className="section gap-site py-site flex w-full flex-col overflow-hidden lg:flex-row">
            <AnimatePresence mode="wait">
              <motion.div
                key={list.find((item) => item.id === activeAccordionId)?.id}
                className="relative h-auto w-full"
                initial={{ y: -100, opacity: 0 }}
                animate={{ y: 0, opacity: 1 }}
                exit={{ y: 100, opacity: 0 }}
                transition={{ duration: 0.2 }}
              >
                <Media
                  key={list.find((item) => item.id === activeAccordionId)?.id}
                  imgClassName="w-full h-auto rounded-3xl"
                  resource={list.find((item) => item.id === activeAccordionId)?.media}
                />
              </motion.div>
            </AnimatePresence>
            <div className="flex w-full flex-col">
              {list.map((item) => (
                <button
                  type="button"
                  key={item.id}
                  className={cn(
                    'text-foreground-primary flex w-full flex-col items-start gap-2 rounded-3xl p-6 text-start transition-colors',
                    activeAccordionId === item.id &&
                      'bg-primary text-primary-foreground [&_p]:text-inverted-secondary',
                  )}
                  data-active={activeAccordionId === item.id}
                  onClick={() => setActiveAccordionId(String(item.id))}
                >
                  <h3 className="text-(length:--text-body-large) font-semibold">{item.heading}</h3>
                  {item.content && (
                    <RichText className="m-0" data={item.content} enableGutter={false} />
                  )}
                </button>
              ))}
            </div>
          </div>
        )}
      </div>
    </div>
  )
}
